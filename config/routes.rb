Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'
  get '/job_api/disabled', to: 'job_api#disabled'
  get '/job_api/enabled', to: 'job_api#enabled'
  get '/job_api/:id/runs', to: 'job_api#runs', as: 'job_api_runs'
  get '/job_api/:id/failures', to: 'job_api#failures', as: 'job_api_failures'

  resources :user_api
  resources :job_api
end
