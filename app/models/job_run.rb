# frozen_string_literal: true

#
# JobRun model
#
class JobRun < ApplicationRecord
  belongs_to :job

  scope :started_after, ->(start_dt) { where('start_time >= ?', start_dt) }
  scope :ended_before, ->(end_dt) { where('end_time <= ?', end_dt) }
  scope :succeeded, ->(success) { where(success: success) }

  def update_run(return_code, success, error_message, stdout, stderr)
    self.success = success
    self.return_code = return_code
    self.error_message = error_message
    self.stdout = stdout.nil? ? '' : stdout.encode('UTF-8', invalid: :replace, undef: :replace)
    self.stderr = stderr.nil? ? '' : stderr.encode('UTF-8', invalid: :replace, undef: :replace)
    self.end_time = Time.current
    save

    perform_callback unless job.success_callback.nil? and job.failure_callback.nil?
  end

  def perform_callback
    body = { job_id: job.id, success: success, return_code: return_code, error_message: error_message,
             stdout: stdout, stderr: stderr, start_time: start_time, end_time: end_time }
    callback = job.success_callback || job.failure_callback
    logger.debug "POSTING to callback hook #{callback} with #{body}"
    HTTParty.post(callback, body: body)
  rescue
    logger.warn "Failed to call callback hook #{callback}: #{$!}"
  end

  def as_json(_options = {})
    super(only: %i[id success return_code error_message stdout stderr start_time end_time job_id created_at updated_at])
  end
end
