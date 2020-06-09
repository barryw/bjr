# frozen_string_literal: true

module SidekiqHelper
  #
  # Tell a worker host to stop accepting jobs and to finish the jobs its working on
  #
  def quiesce(host)
    ps = Sidekiq::ProcessSet.new
    ps.each do |process|
      process.quiet! if process['hostname'].downcase == host.downcase
    end
  end

  #
  # Return information about the number of busy workers
  #
  def workers
    busy = {}
    total_busy = 0
    ps = Sidekiq::ProcessSet.new
    ps.each do |process|
      busy['hosts'] = []
      busy['hosts'] << { 'name': process['hostname'], 'busy': process['busy'], 'pid': process['pid'] }
      total_busy += process['busy'].to_i
    end

    busy['total_busy'] = total_busy

    busy
  end
end
