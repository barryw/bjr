# frozen_string_literal: true

class Folder < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
  validates :expression, presence: true

  scope :mine, ->(user_id) { where(user_id: user_id) }

  def jobs
    Job.search_jobs(user, expression)
  end

  def job_count
    jobs.size
  end

  def as_json(_options = {})
    { id: id, name: name, job_count: job_count, expression: expression, created_at: created_at, updated_at: updated_at }
  end
end
