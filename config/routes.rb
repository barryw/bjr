Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'

  get '/job_api/disabled', to: 'job_api#disabled'
  get '/job_api/enabled', to: 'job_api#enabled'
  post '/job_api/:id/enable', to: 'job_api#enable', as: 'job_api_enable'
  post '/job_api/:id/disable', to: 'job_api#disable', as: 'job_api_disable'

  get '/job_api/:id/failures', to: 'job_api#job_failures', as: 'job_api_job_failures'
  get '/job_api/failures', to: 'job_api#failures', as: 'job_api_failures'
  get '/job_api/:id/runs', to: 'job_api#runs', as: 'job_api_runs'

  get '/job_api/:id/occurrences/:end_date', to: 'job_api#occurrences', as: 'job_api_occurrences'

  resources :user_api
  resources :job_api
end
