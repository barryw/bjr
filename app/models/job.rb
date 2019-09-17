require 'active_support/time'
require 'ice_cube_cron'

class Job < ApplicationRecord
  belongs_to :user
  has_many :job_tags, dependent: :destroy
  has_many :job_runs, dependent: :destroy

  scope :mine, ->(user_id) { where("user_id = ?", user_id) }
  scope :enabled, ->(enabled) { where('enabled = ?', enabled) }

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

  def set_tags(tags)
    job_tags.clear
    tags.each do |tag|
      JobTag.create!(job: self, name: tag[:name], value: tag[:value])
    end
  end

  def as_json(options={})
    h = super(only: [:id, :name, :cron, :enabled, :command, :next_run], include: [job_tags: {only: [:name, :value]}])
  end
private

  def schedule
    date = Date.current.in_time_zone(self.timezone)
    ::IceCube::Schedule.from_cron(date, self.cron)
  end
end
