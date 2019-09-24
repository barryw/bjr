Rails.application.routes.draw do
  require 'sidekiq/web'

  post 'authenticate', to: 'authentication#authenticate'

  resources :job_api
  get '/job_api/:id/runs', to: 'job_api#runs', as: 'job_api_runs'
  get '/job_api/:id/occurrences/:end_date', to: 'job_api#occurrences', as: 'job_api_occurrences'

  resources :user_api

  get '/static_api/timezones', to: 'static_api#timezones', as: 'static_api_timezones'

  mount Sidekiq::Web => '/sidekiq'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end
