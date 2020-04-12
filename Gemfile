source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 5.2.0'
gem 'mysql2', '>= 0.4.4'
gem 'puma', '~> 3.11'
gem 'redis', '~> 4.0'
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'simple_command'
gem 'acts-as-taggable-on'
gem 'kaminari'
gem 'api-pagination'
gem 'rswag'
gem 'rswag-api'
gem 'rswag-ui'
gem 'http_accept_language'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'ice_cube'
gem 'ice_cube_cron'
gem 'chronic'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem 'rswag-specs'
  gem 'factory_bot_rails'
  gem 'simplecov'
  gem 'foreman'
  gem 'rubocop-rails'
  gem 'brakeman'
end

group :test do
  gem "fakeredis", :require => "fakeredis/rspec"
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
