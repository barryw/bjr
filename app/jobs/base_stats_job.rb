# frozen_string_literal: true

class BaseStatsJob < ApplicationJob
  queue_as :stats_runner

  def generate_stats(period)
    User.find_each do |user|
      logger.debug "Processing #{period}ly job stats for user #{user.username}"

      stat_start_dt, time_incr, end_dt = date_ranges(user, period)
      iterate_over_ranges(user, period, stat_start_dt, time_incr, end_dt)

      logger.debug "Finished stats run for user #{user.username}"
    end
  end

  def date_ranges(user, period)
    process_start_dt = start_processing_date(user, period) + 1.second
    stat_start_dt = processing_dates(process_start_dt, period)
    time_incr = time_increment(period)
    end_dt = end_date(period)

    [stat_start_dt, time_incr, end_dt]
  end

  def iterate_over_ranges(user, period, stat_start_dt, time_incr, end_dt)
    while stat_start_dt < end_dt
      stat_end_dt = stat_start_dt + time_incr - 1.second
      generate_row(user, stat_start_dt, stat_end_dt, period)
      stat_start_dt += time_incr
    end
  end

  def generate_row(user, current_dt, new_end, period)
    runs = JobRun.runs_in_range(user.id, current_dt, new_end).count
    failed = JobRun.fails_in_range(user.id, current_dt, new_end).count
    job_count = JobRun.job_count_in_range(user.id, current_dt, new_end)

    total_jobs = Job.mine(user.id).count
    total_enabled = Job.mine(user.id).enabled(true).count

    avg_runtime = JobRun.avg_runtime_in_range(user.id, current_dt, new_end)
    max_runtime = JobRun.max_runtime_in_range(user.id, current_dt, new_end)
    min_runtime = JobRun.min_runtime_in_range(user.id, current_dt, new_end)

    avg_lag = JobRun.avg_job_lag_in_range(user.id, current_dt, new_end)
    max_lag = JobRun.max_job_lag_in_range(user.id, current_dt, new_end)
    min_lag = JobRun.min_job_lag_in_range(user.id, current_dt, new_end)

    JobStat.create(user_id: user.id, runs: runs, failed: failed, avg_runtime: avg_runtime,
                   min_runtime: min_runtime, max_runtime: max_runtime, start_dt: current_dt,
                   end_dt: new_end, period: period, job_count: job_count, total_jobs: total_jobs,
                   total_enabled: total_enabled, avg_job_lag: avg_lag, min_job_lag: min_lag,
                   max_job_lag: max_lag)
  end

  def end_date(period)
    end_dt = case period
             when :minute
               DateTime.now.change(sec: 0)
             when :hour
               DateTime.now.change(sec: 0, min: 0)
             when :day
               DateTime.now.midnight - 1.second
             when :week
               DateTime.now.midnight - 1.second
             end

    end_dt
  end

  def time_increment(period)
    incr = case period
           when :minute
             1.minute
           when :hour
             1.hour
           when :day
             1.day
           when :week
             1.week
           end

    incr
  end

  def processing_dates(process_start_dt, period)
    current_dt = case period
                 when :minute
                   process_start_dt.change(sec: 0)
                 when :hour
                   process_start_dt.change(min: 0)
                 when :day
                   process_start_dt.change(hour: 0)
                 when :week
                   process_start_dt
                 end

    current_dt
  end

  def start_processing_date(user, period)
    JobStat.max_processed_date(user, period) || JobRun.earliest_job_run(user) || DateTime.now
  end
end
