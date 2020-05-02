# frozen_string_literal: true

class BaseStatsJob < ApplicationJob
  queue_as :stats_runner

  def generate_stats(period)
    User.find_each do |user|
      logger.debug "Processing #{period}ly job stats for user #{user.username}"
      logger.debug("No job runs for user #{user.username}. Continuing.") && next unless user_has_job_runs(user)

      process_start_dt = start_processing_date(user, period) + 1.second

      current_dt, end_dt, time_incr = processing_dates(process_start_dt, period)

      logger.debug "Processing starts at #{current_dt} and will end at #{end_dt}"

      while current_dt < end_dt
        new_end = current_dt + time_incr - 1.second
        generate_row(user, current_dt, new_end, period)
        current_dt += time_incr
      end

      logger.debug "Finished stats run for user #{user.username}"
    end
  end

  def generate_row(user, current_dt, new_end, period)
    runs = JobRun.runs_in_range(user.id, current_dt, new_end).count
    failed = JobRun.fails_in_range(user.id, current_dt, new_end).count

    avg_runtime = JobRun.avg_runtime_in_range(user.id, current_dt, new_end)
    max_runtime = JobRun.max_runtime_in_range(user.id, current_dt, new_end)
    min_runtime = JobRun.min_runtime_in_range(user.id, current_dt, new_end)

    JobStat.create(user_id: user.id, runs: runs, failed: failed, avg_runtime: avg_runtime,
                   min_runtime: min_runtime, max_runtime: max_runtime, start_dt: current_dt,
                   end_dt: new_end, period: period)
  end

  def processing_dates(process_start_dt, period)
    current_dt = ''
    end_dt = ''
    time_incr = ''

    case period
    when :minute
      current_dt = process_start_dt.change(sec: 0)
      end_dt = current_dt + 59.seconds
      time_incr = 1.minute
    when :hour
      current_dt = process_start_dt.change(min: 0)
      end_dt = current_dt + 59.minutes + 59.seconds
      time_incr = 1.hour
    when :day
      current_dt = process_start_dt.change(hour: 0)
      end_dt = current_dt + 23.hours + 59.minutes + 59.seconds
      time_incr = 1.day
    when :week
      current_dt = process_start_dt
      end_dt = current_dt + 6.days + 23.hours + 59.minutes + 59.seconds
      time_incr = 1.week
    end

    [current_dt, end_dt, time_incr]
  end

  def user_has_job_runs(user)
    JobRun.count_for_user(user.id).positive?
  end

  def start_processing_date(user, period)
    JobStat.max_processed_date(user, period) || JobRun.earliest_job_run(user)
  end
end
