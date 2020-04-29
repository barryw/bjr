#
# Compute job statistics that we'd like to see on a daily basis
#
class StatsPerDayJob < ApplicationJob
  queue_as :stats_runner

  def perform
  end
end
