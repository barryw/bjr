Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'

  get '/job_api/failures', to: 'job_api#failures', as: 'job_api_failures'
  get '/job_api/:id/runs', to: 'job_api#runs', as: 'job_api_runs'

  get '/job_api/:id/occurrences/:end_date', to: 'job_api#occurrences', as: 'job_api_occurrences'
  get '/job_api/occurrences/:end_date', to: 'job_api#jobs_with_occurrences', as: 'job_api_jobs_with_occurrences'

  resources :user_api
  resources :job_api

  require 'sidekiq/web'

  mount Sidekiq::Web => '/sidekiq'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
end
