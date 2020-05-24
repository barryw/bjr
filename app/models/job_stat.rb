# frozen_string_literal: true

class JobStat < ApplicationRecord
  belongs_to :user

  enum period: %i[minute hour day week]

  scope :mine, ->(user_id) { where(user_id: user_id) }
  scope :minutely_today, ->(user_id) { mine(user_id).where(period: :minute, created_at: DateTime.now.midnight..DateTime.tomorrow.midnight - 1.second) }

  def self.max_processed_date(user, period)
    where(user_id: user.id, period: period).maximum(:end_dt)
  end

  def self.todays_stats(user)
    stats = JobStat.minutely_today(user).order(created_at: :asc)
    total_jobs_array = stats.collect { |stat| stat.total_jobs }
    enabled_jobs_array = stats.collect { |stat| stat.total_enabled }
    run_jobs_array = stats.collect { |stat| stat.runs }
    failed_jobs_array = stats.collect { |stat| stat.failed }
    avg_runtime_array = stats.collect { |stat| stat.avg_runtime }
    max_runtime_array = stats.collect { |stat| stat.max_runtime }
    min_runtime_array = stats.collect { |stat| stat.min_runtime }
    avg_job_lag_array = stats.collect { |stat| stat.avg_job_lag }
    max_job_lag_array = stats.collect { |stat| stat.max_job_lag }
    min_job_lag_array = stats.collect { |stat| stat.min_job_lag }

    total_jobs = total_jobs_array[-1] || 0
    enabled_jobs = enabled_jobs_array[-1] || 0
    run_jobs = run_jobs_array.sum || 0
    failed_jobs = failed_jobs_array.inject(0, :+)
    avg_job_runtime = avg_runtime_array.size == 0 ? 0.0 : avg_runtime_array.inject(0, :+).to_f / avg_runtime_array.size
    max_job_runtime = max_runtime_array.max || 0.0
    min_job_runtime = min_runtime_array.min || 0.0

    avg_job_lag = avg_job_lag_array.size == 0 ? 0.0 : avg_job_lag_array.inject(0, :+).to_f / avg_job_lag_array.size
    max_job_lag = max_job_lag_array.max || 0
    min_job_lag = min_job_lag_array.min || 0

    total_jobs_trend = total_jobs_array.size < 2 ? 0.0 : total_jobs_array.trend_line[:slope]
    enabled_jobs_trend = enabled_jobs_array.size < 2 ? 0.0 : enabled_jobs_array.trend_line[:slope]
    run_jobs_trend = run_jobs_array.size < 2 ? 0.0 : run_jobs_array.trend_line[:slope]
    failed_jobs_trend = failed_jobs_array.size < 2 ? 0.0 : failed_jobs_array.trend_line[:slope]
    avg_job_runtime_trend = avg_runtime_array.size < 2 ? 0.0 : avg_runtime_array.trend_line[:slope]
    max_job_runtime_trend = max_runtime_array.size < 2 ? 0.0 : max_runtime_array.trend_line[:slope]
    min_job_runtime_trend = min_runtime_array.size < 2 ? 0.0 : min_runtime_array.trend_line[:slope]
    avg_job_lag_trend = avg_job_lag_array.size < 2 ? 0.0 : avg_job_lag_array.trend_line[:slope]
    max_job_lag_trend = max_job_lag_array.size < 2 ? 0 : max_job_lag_array.trend_line[:slope]
    min_job_lag_trend = min_job_lag_array.size < 2 ? 0 : min_job_lag_array.trend_line[:slope]

    { total_jobs: total_jobs, enabled_jobs: enabled_jobs, total_jobs_trend: total_jobs_trend.to_f, enabled_jobs_trend: enabled_jobs_trend.to_f,
      run_jobs: run_jobs, run_jobs_trend: run_jobs_trend, failed_jobs: failed_jobs, failed_jobs_trend: failed_jobs_trend.to_f,
      avg_job_runtime: avg_job_runtime.to_f, avg_job_runtime_trend: avg_job_runtime_trend.to_f, max_job_runtime: max_job_runtime.to_f,
      max_job_runtime_trend: max_job_runtime_trend.to_f, min_job_runtime: min_job_runtime.to_f, min_job_runtime_trend: min_job_runtime_trend.to_f,
      avg_job_lag: avg_job_lag.to_f, max_job_lag: max_job_lag, min_job_lag: min_job_lag, avg_job_lag_trend: avg_job_lag_trend.to_f,
      max_job_lag_trend: max_job_lag_trend, min_job_lag_trend: min_job_lag_trend }
  end

  def as_json(_options = {})
    {
      runs: runs,
      failed: failed,
      job_count: job_count,
      avg_runtime: BigDecimal(avg_runtime),
      max_runtime: BigDecimal(max_runtime),
      min_runtime: BigDecimal(min_runtime),
      avg_job_lag: BigDecimal(avg_job_lag),
      max_job_lag: max_job_lag,
      min_job_lag: min_job_lag,
      start_dt: start_dt,
      end_dt: end_dt,
      created_at: created_at,
      updated_at: updated_at,
      period: period
    }
  end
end
