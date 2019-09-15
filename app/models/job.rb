require 'active_support/time'
require 'ice_cube_cron'

class Job < ApplicationRecord
  belongs_to :user
  has_many :job_tags, dependent: :destroy
  has_many :job_runs, dependent: :destroy

  scope :mine, ->(user_id) { where("user_id = ?", user_id) }
  scope :disabled, ->(disabled) { where('disabled = ?', disabled) }

  before_validation(on: [:create, :update]) do
    self.timezone = 'UTC' if timezone.blank?
    date = Date.current.in_time_zone(self.timezone)
    schedule = ::IceCube::Schedule.from_cron(date, self.cron)
    self.next_run = schedule.next_occurrence
  end
end
