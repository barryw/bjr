class JobRun < ApplicationRecord
  belongs_to :job

  scope :started_after, ->(start_dt) { where('start_time >= ?', start_dt) }
  scope :ended_before, ->(end_dt) { where('end_time <= ?', end_dt) }
  scope :succeeded, ->(success) { where(success: success) }

  def update_run(return_code, success, error_message, stdout, stderr)
    self.success = success
    self.return_code = return_code
    self.error_message = error_message
    self.stdout = stdout
    self.stderr = stderr
    self.end_time = Time.current
    save
  end

  def as_json(options = {})
    super(only: [:id, :success, :return_code, :error_message, :stdout, :stderr, :start_time, :end_time, :job_id, :created_at, :updated_at])
  end
end
