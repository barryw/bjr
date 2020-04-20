# frozen_string_literal: true

require 'active_support/time'
require 'ice_cube_cron'
require 'chronic'

#
# Job model
#
class Job < ApplicationRecord
  acts_as_taggable

  belongs_to :user
  has_many :job_runs, dependent: :delete_all

  scope :schedulable, -> { where('next_run < ? and enabled = ? and running = ?', Time.current, true, false) }
  scope :mine, ->(user_id) { where(user_id: user_id) }
  scope :enabled, ->(enabled) { where(enabled: enabled) }
  scope :running, ->(running) { where(running: running) }
  scope :successful, ->(successful) { where(success: successful) }
  scope :include_by_ids, ->(ids) { where('jobs.id in (?)', ids) }

  TAG_SEARCH = %w[any all exclude].freeze

  before_validation(on: %i[create update]) do
    self.timezone = 'UTC' if timezone.blank?
    begin
      date = Date.current.in_time_zone(timezone)
    rescue StandardError
      raise TZInfo::InvalidTimezoneIdentifier
    end
    schedule = ::IceCube::Schedule.from_cron(date, cron)
    self.next_run = schedule.next_occurrence
  end

  # Do the tagging
  def tag(user, tags)
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
  def start_job
    run = JobRun.create(job: self, start_time: Time.current)
    self.running = true
    save
    run
  end

  # When a job completes, this is called to update the job and the run
  def stop_job(run, return_code, success, error_message, stdout, stderr)
    self.running = false
    self.last_run = Time.current
    self.success = success
    run.update_run(return_code, success, error_message, stdout, stderr)
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

    query
  end

  def self.find_jobs(user, occur_start, occur_end, tags, incexc, enabled, succeeded, running)
    search = Job.mine(user)
    search = search.enabled(enabled) unless enabled.blank?
    search = search.running(running) unless running.blank?
    search = search.successful(succeeded) unless succeeded.blank?
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

  # Called when the job is rendered as JSON
  def as_json(_options = {})
    {
      id: id,
      name: name,
      cron: cron,
      enabled: enabled,
      command: command,
      next_run: next_run,
      running: running,
      created_at: created_at,
      updated_at: updated_at,
      timezone: timezone,
      tags: tags.collect(&:name)
    }
  end

  private

  def schedule
    date = Date.current.in_time_zone(timezone)
    ::IceCube::Schedule.from_cron(date, cron)
  end
end
