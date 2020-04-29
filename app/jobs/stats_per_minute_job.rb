#
# Compute job statistics that we'd like to see on a per minute basis
#
class StatsPerMinuteJob < ApplicationJob
  queue_as :stats_runner

  def perform
  end
end
