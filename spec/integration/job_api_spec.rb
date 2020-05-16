# frozen_string_literal: true

require 'swagger_helper'

describe 'Job API' do
  path '/job_api/{id}/run_now' do
    post 'Run a job now' do
      description 'Queues a job to run now'
      tags 'Jobs'
      operationId 'runJobNow'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, required: true, type: :integer, description: 'The id of the job to execute now'

      response '200', 'Job queued to execute' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
          expect(json['is_error']).to be false
        end
      end

      response '404', 'Job not found' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 1 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
          expect(json['is_error']).to be true
        end
      end

      response '409', 'Job is already running' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:job) { create(:job1, user: admin, running: true) }
        let(:id) { job.id }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(409)
          expect(json['is_error']).to be true
        end
      end
    end
  end

  path '/job_api/{id}/occurrences/{end_date}' do
    get 'Upcoming job occurrences' do
      description 'Retrieves a list of upcoming occurrences for a job'
      tags 'Jobs'
      operationId 'jobOccurrences'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, required: true, type: :integer, description: 'The id of the job to retrieve occurrences for'
      parameter name: :end_date, in: :path, required: true, type: :string, description: 'The date to retrieve occurrences up to'
      parameter name: :per_page, in: :query, type: :integer, required: false
      parameter name: :page, in: :query, type: :integer, required: false
      parameter name: :timezone, in: :query, type: :string, required: false

      response '200', 'Occurrences received successfully' do
        header 'per-page', schema: { type: :integer }, description: 'The number of items in this page.'
        header 'total', schema: { type: :integer }, description: 'The total number of items available.'
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        let(:end_date) { DateTime.now + 1.day }
        schema '$ref' => '#/components/schemas/OccurrenceMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object'].length).to eq(25)
        end
      end

      response '404', 'Job not found' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 1 }
        let(:end_date) { DateTime.now }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
          expect(json['is_error']).to be true
        end
      end
    end
  end

  path '/job_api' do
    post 'Creates a job' do
      description 'Creates a job'
      tags 'Jobs'
      operationId 'createJob'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: { '$ref' => '#/components/schemas/JobIn' }

      response '201', 'Job created successfully.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { name: 'My New Job', cron: '*/5 * * * *', command: 'echo Hello World', timezone: 'UTC', enabled: 'true', tags: 'tag1, tag2',
                         success_callback: 'http://localhost:3000/success', failure_callback: 'http://localhost:3000/failure' } }
        schema '$ref' => '#/components/schemas/SingleJobMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be false
          expect(json['status_code']).to eq(201)
          expect(json['object']['name']).to eq('My New Job')
          expect(json['object']['cron']).to eq('*/5 * * * *')
          expect(json['object']['command']).to eq('echo Hello World')
          expect(json['object_type']).to eq('job')
          expect(json['object']['tags']).to eq(%w[tag1 tag2])
          expect(json['object']['enabled']).to be true
          expect(json['object']['success_callback']).to eq('http://localhost:3000/success')
          expect(json['object']['failure_callback']).to eq('http://localhost:3000/failure')
        end
      end

      response '400', 'Invalid timezone name.' do
        let(:admin) { create(:admin1) }
        let(:exiting_job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { name: 'job1', cron: '*/5 * * * *', command: 'echo Hello World', timezone: 'ASS', enabled: 'true', tags: 'tag1, tag2' } }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(400)
          expect(json['message']).to eq("Invalid timezone 'ASS' specified. Acceptable timezone list: http://www.example.com/timezones")
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
      tags 'Jobs'
      operationId 'getJobs'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :tags, in: :query, type: :string, description: 'Specify a comma-separated list of tags to search jobs by.', required: false
      parameter name: :incexc, in: :query, schema: { type: :string, enum: %w[all any except], description: 'How to handle the case where many tags are specified.' }, required: false
      parameter name: :start_date, in: :query, type: :string, description: 'Specify a start date to search jobs by.', required: false
      parameter name: :end_date, in: :query, type: :string, description: 'Specify an end date to search jobs by.', required: false
      parameter name: :enabled, in: :query, type: :boolean, description: 'Search on whether a job is enabled or not.', required: false
      parameter name: :succeeded, in: :query, type: :boolean, description: 'Search on whether a job\'s last run was successful or not.', required: false
      parameter name: :running, in: :query, type: :boolean, description: 'Search on whether a job is currently running or not.', required: false
      parameter name: :name, in: :query, type: :string, description: 'Search on a job\'s name.', required: false
      parameter name: :search_timezone, in: :query, type: :string, description: 'Search for jobs in a timezone.', required: false
      parameter name: :command, in: :query, type: :string, description: 'Search for jobs by the command that they execute.', required: false
      parameter name: :timezone, in: :query, type: :string, required: false
      parameter name: :per_page, in: :query, type: :integer, required: false
      parameter name: :page, in: :query, type: :integer, required: false

      response '200', 'Jobs returned successfully' do
        header 'per-page', schema: { type: :integer }, description: 'The number of items in this page.'
        header 'total', schema: { type: :integer }, description: 'The total number of items available.'
        let(:admin) { create(:admin1) }
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/JobArrayMessage'

        before do |request|
          create(:job1, user: admin)
          create(:job2, user: admin)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object'].length).to eq(2)
        end
      end
    end
  end

  path '/job_api/{id}/runs' do
    get 'Retrieve the runs for a job' do
      description 'Retrieve the runs for a job'
      tags 'Jobs'
      operationId 'getJobRuns'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer, required: true
      parameter name: :per_page, in: :query, type: :integer, required: false
      parameter name: :page, in: :query, type: :integer, required: false
      parameter name: :succeeded, in: :query, type: :boolean, required: false
      parameter name: :start_date, in: :query, type: :string, required: false
      parameter name: :end_date, in: :query, type: :string, required: false
      parameter name: :timezone, in: :query, type: :string, required: false

      response '200', 'Runs received successfully.' do
        header 'per-page', schema: { type: :integer }, description: 'The number of items in this page.'
        header 'total', schema: { type: :integer }, description: 'The total number of items available.'
        let(:admin) { create(:admin1) }
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        schema '$ref' => '#/components/schemas/JobRunArrayMessage'

        before do |request|
          create(:successful_job_run, job: job, start_time: Time.current - 3.hours, end_time: Time.current - 2.hours)
          create(:failed_job_run, job: job, start_time: Time.current - 3.hours, end_time: Time.current - 2.hours)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object'].length).to eq(2)
          expect(json['object'][0]['job_id']).to eq(job.id)
          expect(json['object'][0]['success']).to be true
          expect(json['object'][0]['return_code']).to eq(0)
          expect(json['object'][0]['error_message']).to be nil
          expect(json['object'][0]['stdout']).to eq('Hello, World!')
          expect(json['object'][0]['stderr']).to be nil

          expect(json['object'][1]['job_id']).to eq(job.id)
          expect(json['object'][1]['success']).to be false
          expect(json['object'][1]['return_code']).to eq(1)
          expect(json['object'][1]['error_message']).to eq('Failed to write Hello, World!')
          expect(json['object'][1]['stdout']).to be nil
          expect(json['object'][1]['stderr']).to eq('Everybody wants to rule the world!')
        end
      end
    end
  end

  path '/job_api/{id}' do
    put 'Updates a single job' do
      description 'Updates a single job'
      tags 'Jobs'
      operationId 'updateJob'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer
      parameter name: :params, in: :body, schema: { '$ref' => '#/components/schemas/JobIn' }

      response '200', 'Job updated successfully.' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        let(:params) { { name: 'Updated Job', cron: '*/60 * * * *', command: 'ls -l' } }
        schema '$ref' => '#/components/schemas/SingleJobMessage'

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
      tags 'Jobs'
      operationId 'deleteJob'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', I18n.t('jobs.messages.deleted') do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        schema '$ref' => '#/components/schemas/SingleJobMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
        end
      end

      response '409', I18n.t('jobs.errors.cant_delete_running') do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin, running: true) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        schema '$ref' => '#/components/schemas/SingleJobMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(409)
        end
      end

      response '404', I18n.t('jobs.errors.not_found') do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 0 }
        schema '$ref' => '#/components/schemas/SingleJobMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end
    end

    get 'Retrieves a single job' do
      description 'Retrieves a single job'
      tags 'Jobs'
      operationId 'getJob'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'Job returned successfully' do
        let(:admin) { create(:admin1) }
        let(:job) { create(:job1, user: admin) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { job.id }
        schema '$ref' => '#/components/schemas/SingleJobMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object_type']).to eq('job')
          expect(json['is_error']).to be false
          expect(json['status_code']).to eq(200)
          expect(json['object']['id']).to eq(job.id)
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
