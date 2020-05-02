# frozen_string_literal: true

#
# Compute job statistics that we'd like to see on a per minute basis
#
class StatsPerHourJob < BaseStatsJob
  queue_as :stats_runner

  def perform
    generate_stats(:hour)
  end
end
