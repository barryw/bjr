#
# Compute job statistics that we'd like to see on a per week basis
#
class StatsPerWeekJob < ApplicationJob
  queue_as :stats_runner

  def perform
  end
end
