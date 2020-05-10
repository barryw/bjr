# frozen_string_literal: true

Rails.application.routes.draw do
  root to: redirect('/api-docs')

  # Authentication API
  post 'authenticate', to: 'authentication#authenticate'

  # Job API
  resources :job_api
  post '/job_api/:id/run_now', to: 'job_api#run_now', as: 'job_api_run_now'
  get '/job_api/:id/runs', to: 'job_api#runs', as: 'job_api_runs'
  get '/job_api/:id/occurrences/:end_date', to: 'job_api#occurrences', as: 'job_api_occurrences'

  # User API
  resources :user_api

  # Static API
  get '/timezones', to: 'static_api#timezones', as: 'static_api_timezones'
  get '/tags', to: 'static_api#tags', as: 'static_api_tags'
  get '/health', to: 'static_api#health', as: 'static_api_health'
  get '/version', to: 'static_api#version', as: 'version'

  # Job Server API
  get '/job_server_api/minutely_job_stats', to: 'job_server_api#minutely_job_stats', as: 'minutely_job_stats'
  get '/job_server_api/hourly_job_stats', to: 'job_server_api#hourly_job_stats', as: 'hourly_job_stats'
  get '/job_server_api/daily_job_stats', to: 'job_server_api#daily_job_stats', as: 'daily_job_stats'
  get '/job_server_api/weekly_job_stats', to: 'job_server_api#weekly_job_stats', as: 'weekly_job_stats'

  get '/job_server_api/recent_jobs', to: 'job_server_api#recent_jobs', as: 'recent_jobs'
  get '/job_server_api/upcoming_jobs', to: 'job_server_api#upcoming_jobs', as: 'upcoming_jobs'

  get '/job_server_api/todays_stats', to: 'job_server_api#todays_stats', as: 'todays_stats'

  # Swagger UI
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end
