# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'mysql2', '>= 0.4.4'
gem 'rails', '~> 5.2.0'
gem 'redis', '~> 4.0'

gem 'puma', '~> 3.11'
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'oj'

gem 'acts-as-taggable-on'
gem 'api-pagination'
gem 'bcrypt', '~> 3.1.7'
gem 'http_accept_language'
gem 'jwt'
gem 'kaminari'
gem 'rswag-api'
gem 'rswag-ui'
gem 'simple_command'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'chronic'
gem 'ice_cube'
gem 'ice_cube_cron'

gem 'httparty'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'brakeman'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'foreman'
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem 'rswag'
  gem 'rswag-specs'
  gem 'rubocop-rails'
  gem 'simplecov'
end

group :test do
  gem 'codecov', require: false
  gem 'fakeredis', require: 'fakeredis/rspec'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
