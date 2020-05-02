# frozen_string_literal: true

#
# Compute job statistics that we'd like to see on a daily basis
#
class StatsPerDayJob < BaseStatsJob
  queue_as :stats_runner

  def perform
    generate_stats(:day)
  end
end
