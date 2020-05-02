# frozen_string_literal: true

#
# Compute job statistics that we'd like to see on a per week basis
#
class StatsPerWeekJob < BaseStatsJob
  queue_as :stats_runner

  def perform
    generate_stats(:week)
  end
end
