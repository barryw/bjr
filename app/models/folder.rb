class Folder < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :name, uniqueness: { scope: :user_id }
  validates :expression, presence: true

  scope :mine, ->(user_id) { where(user_id: user_id) }

  def jobs
    Job.search_jobs(user, expression)
  end

  def as_json(_options = {})
    super(only: %i[id name expression created_at updated_at])
  end
end
