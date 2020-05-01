class JobStat < ApplicationRecord
  belongs_to :user

  enum period: %i[minute hour day week]

  scope :mine, -> (user_id) { where(user_id: user_id) }

  def self.max_processed_date(user, period)
    where(user_id: user.id, period: period).maximum(:end_dt)
  end

  def as_json(_options = {})
    {
      runs: runs,
      failed: failed,
      avg_runtime: avg_runtime,
      max_runtime: max_runtime,
      min_runtime: min_runtime,
      start_dt: start_dt,
      end_dt: end_dt,
      created_at: created_at,
      updated_at: updated_at,
      period: period
    }
  end
end
