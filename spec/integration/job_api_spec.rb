require 'swagger_helper'

describe 'Job API' do
  path '/job_api' do
    get 'Retrieves jobs' do
      consumes 'application/json'

      response '201', 'job created' do
        let(:job) { { name: 'job1', cron: '* * * * *', command: 'ls -l' }}
      end
    end
  end

  path '/job_api' do
    post 'Creates a job' do
      consumes 'application/json'
    end
  end
end
