# frozen_string_literal: true

redis_conn = proc {
  url = "redis://#{ENV.fetch('REDIS_HOST', 'localhost')}:#{ENV.fetch('REDIS_PORT', 6379)}/#{ENV.fetch('REDIS_SIDEKIQ_DB', 0)}"
  sentinels = ENV.fetch('REDIS_SENTINELS', nil)
  redis = nil
  if sentinels
    Rails.logger.info "Redis Sentinels have been specified. Will configure with Sentinel support."
    sentinel_list = []
    sentinel_raw_list = sentinels.split(",").map(&:strip)
    sentinel_raw_list.each do |sentinel|
      host, port = sentinel.split(':')
      if host && port
        sentinel_list << { host: host, port: port }
      end
    end
    redis = Redis.new(url: url, sentinels: sentinel_list, role: :master)
  else
    Rails.logger.info "No Redis Sentinels specified. Using standard Redis connection."
    redis = Redis.new(url: url)
  end

  redis
}

# Configure Sidekiq's Redis
Sidekiq.configure_server do |config|
  config.log_formatter = Sidekiq::Logger::Formatters::JSON.new
  config.redis = ConnectionPool.new(size: ENV.fetch('REDIS_CLIENT_CONN_POOL_SIZE', 15), &redis_conn)
end

Sidekiq.configure_client do |config|
  config.redis = ConnectionPool.new(size: ENV.fetch('REDIS_SERVER_CONN_POOL_SIZE', 25), &redis_conn)
end

# Load up system jobs
schedule_file = "#{Rails.root}/config/schedule.yml"
Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) if File.exist?(schedule_file) && Sidekiq.server?

# Look for schedulables every 10 seconds
Sidekiq.options[:poll_interval] = 10
