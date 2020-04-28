# frozen_string_literal: true

Rails.application.routes.draw do
  root to: redirect('/api-docs')

  # Authentication API
  post 'authenticate', to: 'authentication#authenticate'

  # Job API
  resources :job_api
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
  get '/job_server_api/job_runs_per_day', to: 'job_server_api#job_runs_per_day', as: 'job_runs_per_day'

  # Swagger UI
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end
