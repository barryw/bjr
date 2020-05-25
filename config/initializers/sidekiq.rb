# frozen_string_literal: true

# Configure Sidekiq's Redis
Sidekiq.configure_server do |config|
  config.log_formatter = Sidekiq::Logger::Formatters::JSON.new
  config.redis = { url: "redis://#{ENV.fetch('REDIS_HOST', 'localhost')}:#{ENV.fetch('REDIS_PORT', 6379)}/#{ENV.fetch('REDIS_SIDEKIQ_DB', 0)}" }
end

Sidekiq.configure_client do |config|
  config.redis = { url: "redis://#{ENV.fetch('REDIS_HOST', 'localhost')}:#{ENV.fetch('REDIS_PORT', 6379)}/#{ENV.fetch('REDIS_SIDEKIQ_DB', 0)}" }
end

# Load up system jobs
schedule_file = "#{Rails.root}/config/schedule.yml"
Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file) if File.exist?(schedule_file) && Sidekiq.server?

# Look for schedulables every 10 seconds
Sidekiq.options[:poll_interval] = 10
