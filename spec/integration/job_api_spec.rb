# frozen_string_literal: true

require 'swagger_helper'

describe 'Job API' do
  path '/job_api' do
    post 'Creates a job' do
      description 'Creates a job'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: { "$ref" => "#/components/schemas/JobIn" }

      response '201', 'Job created successfully.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { name: 'My New Job', cron: '*/5 * * * *', command: 'echo Hello World', timezone: 'UTC', enabled: 'true', tags: 'tag1, tag2' } }
        schema '$ref' => '#/components/schemas/JobOut'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be false
          expect(json['object']['name']).to eq('My New Job')
          expect(json['object']['cron']).to eq('*/5 * * * *')
          expect(json['object']['command']).to eq('echo Hello World')
          expect(json['object_type']).to eq('job')
          expect(json['object']['tags']).to eq(%w[tag1 tag2])
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
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :tags, in: :query, type: :string, required: false, description: 'Specify a comma-separated list of tags to search jobs by.'
      parameter name: :incexc, in: :query, schema: { type: :string, enum: ['all','any','except'], description: 'How to handle the case where many tags are specified.' }, required: false
      parameter name: :start_date, in: :query, type: :string, required: false, description: 'Specify a start date to search jobs by.'
      parameter name: :end_date, in: :query, type: :string, required: false, description: 'Specify an end date to search jobs by.'

      response '200', 'Jobs returned successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/JobArray'

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
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer
      parameter name: :params, in: :body, schema: { "$ref" => "#/components/schemas/JobIn" }

      response '200', 'Job updated successfully.' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        let(:params) { { name: 'Updated Job', cron: '*/60 * * * *', command: 'ls -l' } }
        schema '$ref' => '#/components/schemas/JobOut'

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
        let(:job) { create(:job1, user: admin) }
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
        let(:params) { {} }
        let(:id) { 0 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end
    end

    delete 'Deletes a job' do
      description 'Deletes a job'
      security [bearerAuth: []]
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
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Job returned successfully' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        schema '$ref' => '#/components/schemas/SingleJob'

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
  end
end
