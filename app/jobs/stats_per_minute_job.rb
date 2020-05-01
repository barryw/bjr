#
# Compute job statistics that we'd like to see on a per minute basis
#
class StatsPerMinuteJob < BaseStatsJob
  queue_as :stats_runner

  def perform
    generate_stats(:minute)
  end

end
