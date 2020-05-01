#
# Compute job statistics that we'd like to see on a per minute basis
#
class StatsPerMinuteJob < ApplicationJob
  queue_as :stats_runner

  def perform
    User.find_each do |user|
      logger.debug "Processing minutely job stats for user #{user.username}"
      logger.debug "No job runs for user #{user.username}. Continuing." and next if !user_has_job_runs(user)

      process_start_dt = start_processing_date(user)

      current_dt = process_start_dt.change(sec: 0)
      end_dt = DateTime.now.change(sec: 0)

      logger.debug "Processing starts at #{current_dt} and will end at #{end_dt}"
      while current_dt < end_dt
        runs = JobRun.runs_in_range(user.id, current_dt - 1.minute, current_dt).count
        failed = JobRun.fails_in_range(user.id, current_dt - 1.minute, current_dt).count

        avg_runtime = JobRun.avg_runtime_in_range(user.id, current_dt - 1.minute, current_dt)
        max_runtime = JobRun.max_runtime_in_range(user.id, current_dt - 1.minute, current_dt)
        min_runtime = JobRun.min_runtime_in_range(user.id, current_dt - 1.minute, current_dt)

        JobStat.create(user_id: user.id, runs: runs, failed: failed, avg_runtime: avg_runtime,
                       min_runtime: min_runtime, max_runtime: max_runtime, start_dt: current_dt - 1.minute,
                       end_dt: current_dt, period: :minute)

        current_dt = current_dt + 1.minute
      end
      logger.debug "Finished stats run for user #{user.username}"
    end
  end

  def user_has_job_runs(user)
    JobRun.count_for_user(user.id) > 0
  end

  def start_processing_date(user)
    JobStat.max_processed_date(user) || JobRun.earliest_job_run(user)
  end
end
