# frozen_string_literal: true

#
# JobRun model
#
class JobRun < ApplicationRecord
  belongs_to :job

  scope :count_for_user, ->(user_id) { joins(:job).where(jobs: { user_id: user_id }).count(:id) }
  scope :started_after, ->(start_dt) { where('start_time >= ?', start_dt) }
  scope :ended_before, ->(end_dt) { where('end_time <= ?', end_dt) }
  scope :succeeded, ->(success) { where(success: success) }

  scope :runs_in_range, ->(user_id, start_dt, end_dt) { joins(:job).where(jobs: { user_id: user_id }, start_time: start_dt..end_dt) }
  scope :fails_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).where(success: false) }
  scope :job_count_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).select('jobs.id').distinct.count }

  scope :avg_runtime_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).average(Arel.sql('timestampdiff(microsecond, start_time, end_time)/1000000')) }
  scope :max_runtime_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).maximum(Arel.sql('timestampdiff(microsecond, start_time, end_time)/1000000')) }
  scope :min_runtime_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).minimum(Arel.sql('timestampdiff(microsecond, start_time, end_time)/1000000')) }

  scope :avg_job_lag_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).where(is_manual: false).average(:schedule_diff_in_seconds) }
  scope :max_job_lag_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).where(is_manual: false).maximum(:schedule_diff_in_seconds) }
  scope :min_job_lag_in_range, ->(user_id, start_dt, end_dt) { runs_in_range(user_id, start_dt, end_dt).where(is_manual: false).minimum(:schedule_diff_in_seconds) }

  scope :job_schedule_diffs, ->(job_id) { joins(:job).where(jobs: {id: job_id}, is_manual: false).order(end_time: :asc).pluck(:schedule_diff_in_seconds) }
  scope :avg_job_lag_for_job, ->(job_id) { joins(:job).where(jobs: { id: job_id }, is_manual: false).average(:schedule_diff_in_seconds) }
  scope :max_job_lag_for_job, ->(job_id) { joins(:job).where(jobs: { id: job_id }, is_manual: false).maximum(:schedule_diff_in_seconds) }
  scope :min_job_lag_for_job, ->(job_id) { joins(:job).where(jobs: { id: job_id }, is_manual: false).minimum(:schedule_diff_in_seconds) }

  scope :job_runtimes, ->(job_id) { joins(:job).where(jobs: {id: job_id}).order(end_time: :asc).pluck(Arel.sql('timestampdiff(microsecond, start_time, end_time)/1000000')) }
  scope :avg_runtime_for_job, ->(job_id) { joins(:job).where(jobs: { id: job_id }).average(Arel.sql('timestampdiff(microsecond, start_time, end_time)/1000000')) }
  scope :max_runtime_for_job, ->(job_id) { joins(:job).where(jobs: { id: job_id }).maximum(Arel.sql('timestampdiff(microsecond, start_time, end_time)/1000000')) }
  scope :min_runtime_for_job, ->(job_id) { joins(:job).where(jobs: { id: job_id }).minimum(Arel.sql('timestampdiff(microsecond, start_time, end_time)/1000000')) }

  def self.earliest_job_run(user)
    joins(:job).where(jobs: { user_id: user.id }).minimum(:start_time)
  end

  def update_run(return_code, success, error_message, stdout, stderr)
    self.success = success
    self.return_code = return_code
    self.error_message = error_message
    self.stdout = stdout.nil? ? '' : stdout.encode('UTF-8', invalid: :replace, undef: :replace)
    self.stderr = stderr.nil? ? '' : stderr.encode('UTF-8', invalid: :replace, undef: :replace)
    self.end_time = Time.current
    save

    perform_callback unless job.success_callback.nil? && job.failure_callback.nil?
  end

  def perform_callback
    body = { job_id: job.id, success: success, return_code: return_code, error_message: error_message,
             stdout: stdout, stderr: stderr, start_time: start_time, end_time: end_time }
    callback = job.success_callback || job.failure_callback
    logger.debug "POSTING to callback hook #{callback} with #{body}"
    HTTParty.post(callback, body: body)
  rescue StandardError
    logger.warn "Failed to call callback hook #{callback}: #{$!}"
  end

  def as_json(_options = {})
    super(only: %i[id success return_code error_message stdout stderr start_time end_time job_id scheduled_start_time schedule_diff_in_seconds is_manual created_at updated_at])
  end
end
