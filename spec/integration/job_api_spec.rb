require 'swagger_helper'

describe 'Job API' do
  path '/job_api' do
    post 'Creates a job' do
      description 'Creates a job'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string, description: "The name of the new job." },
          cron: { type: :string, description: "The cron expression for the new job." },
          command: { type: :string, description: "The command to run when the job fires." },
          timezone: { type: :string, description: "The timezone to run the job in." },
          enabled: { type: :boolean, description: "Is the new job enabled by default?" },
          tags: { type: :string, description: "A comma-separated list of tags to associate with this job. You can search jobs by their tags." }
        }
      }

      response '201', I18n.t('jobs.messages.created') do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { name: 'My New Job', cron: '*/5 * * * *', command: 'echo Hello World', timezone: 'UTC', enabled: 'true', tags: 'tag1, tag2' } }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be false
          expect(json['object']['name']).to eq('My New Job')
          expect(json['object']['cron']).to eq('*/5 * * * *')
          expect(json['object']['command']).to eq('echo Hello World')
          expect(json['object_type']).to eq('job')
          expect(json['object']['tags']).to eq(['tag1', 'tag2'])
          expect(json['object']['enabled']).to be true
        end
      end

      response '403', 'Invalid timezone name.' do
        let(:admin) { create(:admin1) }
        let(:exiting_job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { name: 'job1', cron: '*/5 * * * *', command: 'echo Hello World', timezone: 'ASS', enabled: 'true', tags: 'tag1, tag2' } }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(403)
          expect(json['message']).to eq("Invalid timezone 'ASS' specified. Acceptable timezone list: http://www.example.com/static_api/timezones")
        end
      end

      response '403', I18n.t('jobs.errors.already_exists') do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { name: 'job1', cron: '*/5 * * * *', command: 'echo Hello World', timezone: 'UTC', enabled: 'true', tags: 'tag1, tag2' } }

        before do |request|
          create(:job1, user: admin)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['message']).to eq(I18n.t('jobs.errors.already_exists'))
          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(403)
        end
      end

    end

    get 'Retrieves jobs' do
      description 'Retrieves jobs'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Jobs returned successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }

        before do |request|
          create(:job1, user: admin)
          create(:job2, user: admin)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json.length).to eq(2)
        end
      end
    end
  end

  path '/job_api/{id}' do
    put 'Updates a single job' do
      description 'Updates a single job'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string, description: "The new name of the job. Must be unique." },
          cron: { type: :string, description: "The new cron expression for the job." },
          command: { type: :string, description: "The command to run when the job fires." },
          timezone: { type: :string, description: "The timezone to run the job in." },
          enabled: { type: :boolean, description: "Is the job enabled by default?" },
          tags: { type: :string, description: "A comma-separated list of tags to associate with this job. You can search jobs by their tags." }
        }
      }

      response '200', 'Job updated successfully.' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin)}
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        let(:params) { { name: 'Updated Job', cron: '*/60 * * * *', command: 'ls -l' } }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object']['id']).to eq(job.id)
          expect(json['object']['name']).to eq('Updated Job')
          expect(json['object']['cron']).to eq('*/60 * * * *')
          expect(json['object']['command']).to eq('ls -l')
        end
      end

      response '403', 'Job could not be updated.' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin)}
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        let(:params) { { name: 'job2', cron: '*/60 * * * *', command: 'ls -l' } }

        before do |request|
          create(:job2, user: admin)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(403)
        end
      end

      response '404', I18n.t('jobs.errors.not_found') do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { } }
        let(:id) { 0 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end
    end

    delete 'Deletes a job' do
      description 'Deletes a job'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', I18n.t('jobs.messages.deleted') do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
        end
      end

      response '404', I18n.t('jobs.errors.not_found') do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 0 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end
    end

    get 'Retrieves a single job' do
      description 'Retrieves a single job'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Job returned successfully' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['id']).to eq(job.id)
        end
      end

      response '404', I18n.t('jobs.errors.not_found') do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 0 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end
    end

    put 'Updates a single job' do
      description 'Updates a single job'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string, description: "The new name of the job." },
          cron: { type: :string, description: "The new cron expression for the job." },
          command: { type: :string, description: "The command to run when the job fires." },
          timezone: { type: :string, description: "The timezone to run the job in." },
          enabled: { type: :boolean, description: "Is the new job enabled by default?" },
          tags: { type: :string, description: "A comma-separated list of tags to associate with this job. You can search jobs by their tags." }
        }
      }

      response '404', I18n.t('jobs.errors.not_found') do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { } }
        let(:id) { 0 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['message']).to eq(I18n.t('jobs.errors.not_found'))
          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(404)
        end
      end
    end
  end
end
