# frozen_string_literal: true

#
# Compute statistics for the runs for all jobs.
#
class JobRunStatsJob < BaseStatsJob
  queue_as :stats_runner

  def perform
    Job.find_each do |job|
      ActiveRecord::Base.transaction do
        job.compute_run_stats
      end
    end
  end
end
