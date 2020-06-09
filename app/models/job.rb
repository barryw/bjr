# frozen_string_literal: true

require 'active_support/time'
require 'ice_cube_cron'
require 'chronic'
require 'trends'

#
# Job model
#
class Job < ApplicationRecord
  acts_as_taggable

  belongs_to :user
  has_many :job_runs, dependent: :delete_all

  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
  validates :cron, presence: true
  validates :command, presence: true

  scope :schedulable, -> { where('next_run < ? and enabled = ? and running = ?', Time.current, true, false) }
  scope :mine, ->(user_id) { where(user_id: user_id) }
  scope :enabled, ->(enabled) { where(enabled: enabled) }
  scope :running, ->(running) { where(running: running) }
  scope :successful, ->(successful) { where(success: successful).where.not(last_run: nil) }
  scope :named_like, ->(name) { where('name like ?', "%#{sanitize_sql_like(name)}%") }
  scope :timezone, ->(timezone) { where(timezone: timezone) }
  scope :command, ->(command) { where('command like ?', "%#{sanitize_sql_like(command)}%") }
  scope :include_by_ids, ->(ids) { where('jobs.id in (?)', ids) }
  scope :recent, ->(user_id, count) { mine(user_id).where.not(last_run: nil).order(last_run: :desc).limit(count) }
  scope :upcoming, ->(user_id, count) { mine(user_id).where('next_run > ? and enabled = ? and running = ?', DateTime.now, true, false).order(next_run: :asc).limit(count) }

  TAG_SEARCH = %w[any all exclude].freeze

  before_save :update_cron, if: proc { |model| model.cron_changed? || model.timezone_changed? }

  before_validation(on: %i[create update]) do
    Cronex::ExpressionDescriptor.new(cron).description
  rescue StandardError
    errors.add(:cron, "'#{cron}' is an invalid cron expression.")
  end

  def update_cron
    self.timezone = 'UTC' if timezone.blank?
    self.next_run = schedule.next_occurrence
  rescue StandardError
    raise TZInfo::InvalidTimezoneIdentifier
  end

  # Do the tagging
  def tag(tags)
    self.tag_list = '' if tags.blank?
    user.tag self, with: tags, on: :tags unless tags.nil?
  end

  # Determines whether this job has a schedule ocurrence between 2 dates
  def occurs_between(start_date, end_date)
    schedule.occurs_between? start_date, end_date
  end

  # Get a list of ocurrences until end_date
  def occurrences(end_date)
    schedule.occurrences(end_date)
  end

  # When a job starts, this is called to mark the job as running and create a run
  def start_job(is_manual)
    run = JobRun.create(job: self, start_time: Time.current, scheduled_start_time: is_manual ? nil : next_run, is_manual: is_manual,
                        schedule_diff_in_seconds: [0, (Time.current.to_i - next_run.to_i)].max)
    self.running = true
    save
    run
  end

  # When a job completes, this is called to update the job and the run
  def stop_job(run, return_code, success, error_message, stdout, stderr)
    self.success = success
    run.update_run(return_code, success, error_message, stdout, stderr)
  rescue StandardError
    self.success = false
    logger.error "Failed to update the job run for job #{id} : #{$!}"
  ensure
    self.last_run = Time.current
    self.next_run = schedule.next_occurrence
    self.running = false
    save
  end

  # Look for job runs that fit a set of criteria. This allows us to fetch runs
  # that ran between dates, that succeeded, failed, etc.
  def filter_runs(start_dt, end_dt, success)
    start_dt = Chronic.parse(start_dt) unless start_dt.blank?
    end_dt = Chronic.parse(end_dt) unless end_dt.blank?

    query = job_runs
    query = query.started_after(start_dt) unless start_dt.blank?
    query = query.ended_before(end_dt) unless end_dt.blank?
    query = query.succeeded(success) unless success.blank?

    query.order(end_time: :desc)
  end

  #
  # Take a string expression and convert it into something that find_jobs can deal with. This allows our smart folders
  # to return jobs that match an expression. It also allows UI search components to filter jobs.
  #
  def self.search_jobs(user, expression)
    tags = nil
    enabled = nil
    succeeded = nil
    running = nil
    name = nil
    timezone = nil
    command = nil
    incexc = nil
    occur_start = nil
    occur_end = nil

    if expression
      pieces = expression.split(' ')
      pieces.each do |piece|
        prefix, search = piece.split(':')
        case prefix
        when 'name'
          name = search
        when 'command', 'cmd'
          command = search
        when 'timezone', 'tz'
          timezone = search
        when 'running', 'executing'
          running = true
        when 'stopped'
          running = false
        when 'enabled'
          enabled = true
        when 'disabled'
          enabled = false
        when 'succeeded', 'success', 'successful'
          succeeded = true
        when 'failed', 'fail', 'failing', 'broken'
          succeeded = false
        when 'start_date'
          occur_start = search
        when 'end_date'
          occur_end = search
        when 'tags', 'tag'
          if search.start_with? '!'
            incexc = 'exclude'
            tags = search[1..-1]
          elsif search.start_with? '&'
            incexc = 'all'
            tags = search[1..-1]
          elsif search.start_with? '|'
            incexc = 'any'
            tags = search[1..-1]
          else
            incexc = 'any'
            tags = search
          end
        end
      end
    end

    find_jobs(user, occur_start, occur_end, tags, incexc, enabled, succeeded, running, name, timezone, command)
  end

  def self.find_jobs(user, occur_start, occur_end, tags, incexc, enabled, succeeded, running, name, timezone, command)
    search = Job.mine(user)
    search = search.enabled(enabled) unless enabled.nil?
    search = search.running(running) unless running.nil?
    search = search.successful(succeeded) unless succeeded.nil?
    search = search.named_like(name) unless name.blank?
    search = search.timezone(timezone) unless timezone.blank?
    search = search.command(command) unless command.blank?
    search = search.merge(Job.search_tags(search, tags, incexc)) unless tags.blank?

    # Occurrence is a special case since we can't do it with an activerecord relation
    if occur_start && occur_end
      job_ids = []
      search.find_each do |job|
        job_ids << job.id if job.occurs_between(Chronic.parse(occur_start), Chronic.parse(occur_end))
      end

      search = job_ids.empty? ? Job.none : search.include_by_ids(job_ids)
    end

    search
  end

  def self.search_tags(jobs, tags, incexc)
    incexc = Job::TAG_SEARCH.include?(incexc) ? incexc.downcase : 'all'
    tags = tags.split(',').map(&:strip) unless tags.nil?
    case incexc
    when 'all'
      jobs = jobs.tagged_with(tags, match_all: true)
    when 'any'
      jobs = jobs.tagged_with(tags, any: true)
    when 'exclude'
      jobs = jobs.tagged_with(tags, exclude: true)
    end

    jobs
  end

  #
  # Compute the run statistics for this job
  #
  def compute_run_stats
    job_runtimes = JobRun.job_runtimes(id)

    avg_runtime = JobRun.avg_runtime_for_job(id)
    max_runtime = JobRun.max_runtime_for_job(id)
    min_runtime = JobRun.min_runtime_for_job(id)

    job_schedule_diffs = JobRun.job_schedule_diffs(id)

    avg_lag = JobRun.avg_job_lag_for_job(id)
    max_lag = JobRun.max_job_lag_for_job(id)
    min_lag = JobRun.min_job_lag_for_job(id)

    self.avg_run_duration_trend = job_runtimes.length < 2 ? 0 : job_runtimes.trend_line[:slope]
    self.avg_run_duration = avg_runtime
    self.max_run_duration = max_runtime
    self.min_run_duration = min_runtime

    self.avg_run_lag_trend = job_schedule_diffs.length < 2 ? 0 : job_schedule_diffs.trend_line[:slope]
    self.avg_run_lag = avg_lag
    self.max_run_lag = max_lag
    self.min_run_lag = min_lag

    save!
  end

  # Called when the job is rendered as JSON
  def as_json(_options = {})
    {
      id: id,
      name: name,
      cron: cron,
      enabled: enabled,
      command: command,
      last_run: last_run || '',
      next_run: next_run,
      running: running,
      success: success,
      created_at: created_at,
      updated_at: updated_at,
      timezone: timezone,
      tags: tags.collect(&:name),
      success_callback: success_callback || '',
      failure_callback: failure_callback || '',
      avg_run_duration: avg_run_duration,
      max_run_duration: max_run_duration,
      min_run_duration: min_run_duration,
      avg_run_duration_trend: avg_run_duration_trend,
      avg_run_lag: avg_run_lag,
      max_run_lag: max_run_lag,
      min_run_lag: min_run_lag,
      avg_run_lag_trend: avg_run_lag_trend
    }
  end

  private

  def schedule
    date = Date.current.in_time_zone(timezone)
    ::IceCube::Schedule.from_cron(date, cron)
  end
end
