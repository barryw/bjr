# frozen_string_literal: true

class BaseStatsJob < ApplicationJob
  queue_as :stats_runner

  def generate_stats(period)
    User.find_each do |user|
      logger.debug "Processing #{period}ly job stats for user #{user.username}"
      logger.debug("No job runs for user #{user.username}. Continuing.") && next unless user_has_job_runs(user)

      process_start_dt = start_processing_date(user, period) + 1.second
      time_incr = time_increment(period)
      end_dt = end_date(period)

      stat_start_dt = processing_dates(process_start_dt, period)

      while stat_start_dt < end_dt
        stat_end_dt = stat_start_dt + time_incr - 1.second
        generate_row(user, stat_start_dt, stat_end_dt, period)
        stat_start_dt += time_incr
      end

      logger.debug "Finished stats run for user #{user.username}"
    end
  end

  def generate_row(user, current_dt, new_end, period)
    runs = JobRun.runs_in_range(user.id, current_dt, new_end).count
    failed = JobRun.fails_in_range(user.id, current_dt, new_end).count
    job_count = JobRun.job_count_in_range(user.id, current_dt, new_end)

    avg_runtime = JobRun.avg_runtime_in_range(user.id, current_dt, new_end)
    max_runtime = JobRun.max_runtime_in_range(user.id, current_dt, new_end)
    min_runtime = JobRun.min_runtime_in_range(user.id, current_dt, new_end)

    JobStat.create(user_id: user.id, runs: runs, failed: failed, avg_runtime: avg_runtime,
                   min_runtime: min_runtime, max_runtime: max_runtime, start_dt: current_dt,
                   end_dt: new_end, period: period, job_count: job_count)
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
    else
      raise "#{period} is not an acceptable period"
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
    else
      raise "#{period} is not an acceptable period"
    end

    current_dt
  end

  def user_has_job_runs(user)
    JobRun.count_for_user(user.id).positive?
  end

  def start_processing_date(user, period)
    JobStat.max_processed_date(user, period) || JobRun.earliest_job_run(user)
  end
end
