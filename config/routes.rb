# frozen_string_literal: true

Rails.application.routes.draw do
  require 'sidekiq/web'

  root to: redirect('/api-docs')

  post 'authenticate', to: 'authentication#authenticate'

  resources :job_api
  get '/job_api/:id/runs', to: 'job_api#runs', as: 'job_api_runs'
  get '/job_api/:id/occurrences/:end_date', to: 'job_api#occurrences', as: 'job_api_occurrences'

  resources :user_api

  get '/health', to: 'static_api#health', as: 'static_api_health'
  get '/static_api/timezones', to: 'static_api#timezones', as: 'static_api_timezones'
  get '/static_api/tags', to: 'static_api#tags', as: 'static_api_tags'
  get '/version', to: 'static_api#version', as: 'version'

  mount Sidekiq::Web => '/sidekiq'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end
