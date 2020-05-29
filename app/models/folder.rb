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
    jobs.count
  end

  def as_json(_options = {})
    { id: self.id, name: self.name, job_count: self.job_count, expression: self.expression, created_at: self.created_at, updated_at: self.updated_at }
  end
end
