require 'active_support/time'
require 'ice_cube_cron'

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

  def occurs_between(start_date, end_date)
    schedule.occurs_between? start_date, end_date
  end

  def occurrences(end_date)
    schedule.occurrences(end_date)
  end

  def as_json(options = {})
    h = super(only: [:id, :name, :cron, :enabled, :command, :next_run, :running, :created_at, :updated_at],
              include: { tags: { only: [:name] } })
  end

  def start_job
    run = JobRun.create(job: self, start_time: Time.current)
    self.running = true
    save
    run
  end

  def stop_job(run, success, error_message, stdout, stderr)
    self.running = false
    self.last_run = Time.current
    run.success = success
    run.error_message = error_message
    run.end_time = self.last_run
    run.stdout = stdout
    run.stderr = stderr
    run.save
    save
  end

  private

  def schedule
    date = Date.current.in_time_zone(self.timezone)
    ::IceCube::Schedule.from_cron(date, self.cron)
  end
end
