require 'active_support/time'
require 'ice_cube_cron'
require 'chronic'

class Job < ApplicationRecord
  acts_as_taggable

  belongs_to :user
  has_many :job_runs, dependent: :destroy

  scope :schedulable, -> { where("next_run < ? and enabled = ? and running = ?", Time.current, true, false) }
  scope :mine, ->(user_id) { where('user_id = ?', user_id) }
  scope :enabled, ->(enabled) { where('enabled = ?', enabled) }
  scope :running, ->(running) { where('running = ?', running) }

  before_validation(on: [:create, :update]) do
    self.timezone = 'UTC' if timezone.blank?
    date = Date.current.in_time_zone(self.timezone)
    schedule = ::IceCube::Schedule.from_cron(date, self.cron)
    self.next_run = schedule.next_occurrence
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
    run.update_run(return_code, success, error_message, stdout, stderr)
    save
  end

  # Look for job runs that fit a set of criteria. This allows us to fetch runs
  # that ran between dates, that succeeded, failed, etc.
  def filter_runs(user, start_dt, end_dt, success)
    start_dt = Chronic.parse(start_dt) unless start_dt.blank?
    end_dt = Chronic.parse(end_dt) unless end_dt.blank?

    query = self.job_runs
    query = query.started_after(start_dt) unless start_dt.blank?
    query = query.ended_before(end_dt) unless end_dt.blank?
    query = query.succeeded(success) if success

    query
  end

  # Called when the job is rendered as JSON
  def as_json(options = {})
    super(only: [:id, :name, :cron, :enabled, :command, :next_run, :running, :created_at, :updated_at],
          include: { tags: { only: [:name] } })
  end

  private

  def schedule
    date = Date.current.in_time_zone(self.timezone)
    ::IceCube::Schedule.from_cron(date, self.cron)
  end
end
