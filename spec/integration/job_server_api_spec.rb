# frozen_string_literal: true

require 'swagger_helper'

describe 'Job Server API' do
  path '/job_server_api/minutely_job_stats' do
    get 'Job statistics by minute' do
      description 'Get minutely job statistics'
      tags 'JobServer'
      operationId 'statsByMinute'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :count, in: :query, type: :integer, required: false, description: 'The number of stats to return (max 60)'

      response '200', 'Minutely stats received successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:count) { 1 }
        schema '$ref' => '#/components/schemas/JobStatMessage'

        before do |request|
          create(:minutely_stat1, user: admin, start_dt: DateTime.now - 1.minute, end_dt: DateTime.now)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be false
          expect(json['object_type']).to eq('jobstats')
          expect(json['object'].length).to eq(1)
          expect(json['message']).to eq(I18n.t('jobserver.messages.minutely_job_stats.received'))
        end
      end

      response '406', 'Too many minutes specified' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:count) { 61 }
        schema '$ref' => '#/components/schemas/JobStatMessage'

        before do |request|
          create(:minutely_stat1, user: admin, start_dt: DateTime.now - 1.minute, end_dt: DateTime.now)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(406)
          expect(json['message']).to eq(I18n.t('jobserver.messages.minutely_job_stats.failed'))
        end
      end
    end
  end

  path '/job_server_api/hourly_job_stats' do
    get 'Job statistics by hour' do
      description 'Get hourly job statistics for the day'
      tags 'JobServer'
      operationId 'statsByHour'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Hourly stats received successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:count) { 1 }
        schema '$ref' => '#/components/schemas/JobStatMessage'

        before do |request|
          create(:hourly_stat1, user: admin, start_dt: DateTime.now - 1.minute, end_dt: DateTime.now)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be false
          expect(json['object_type']).to eq('jobstats')
          expect(json['object'].length).to eq(1)
          expect(json['message']).to eq(I18n.t('jobserver.messages.hourly_job_stats.received'))
        end
      end
    end
  end

  path '/job_server_api/recent_jobs' do
    get 'List of recent jobs' do
      description 'Get a list of the most recently run jobs'
      tags 'JobServer'
      operationId 'recentJobs'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :count, in: :query, type: :integer, required: false, description: 'The number of jobs to return (max 20)'

      response '200', 'Jobs received successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:count) { 1 }
        schema '$ref' => '#/components/schemas/JobArrayMessage'

        before do |request|
          job1 = create(:job1, user: admin)
          job2 = create(:job2, user: admin)
          create(:successful_job_run, job: job1, start_time: DateTime.now - 30.seconds, end_time: DateTime.now)
          create(:successful_job_run, job: job2, start_time: DateTime.now - 30.seconds, end_time: DateTime.now)

          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be false
          expect(json['object_type']).to eq('jobs')
          expect(json['object'].length).to eq(1)
          expect(json['message']).to eq(I18n.t('jobserver.messages.recent_jobs.received'))
        end
      end

      response '406', 'Too many jobs specified' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:count) { 21 }
        schema '$ref' => '#/components/schemas/JobArrayMessage'

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(406)
          expect(json['message']).to eq(I18n.t('jobserver.messages.recent_jobs.failed'))
        end
      end
    end
  end

  path '/job_server_api/upcoming_jobs' do
    get 'List of upcoming jobs' do
      description 'A list of jobs that are about to execute'
      tags 'JobServer'
      operationId 'upcomingJobs'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :count, in: :query, type: :integer, required: false, description: 'The number of jobs to return (max 20)'

      response '200', 'Upcoming job list returned successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:count) { 1 }
        schema '$ref' => '#/components/schemas/JobArrayMessage'

        before do |request|
          job1 = create(:job1, user: admin)
          job2 = create(:job2, user: admin)
          create(:successful_job_run, job: job1, start_time: DateTime.now - 30.seconds, end_time: DateTime.now)
          create(:successful_job_run, job: job2, start_time: DateTime.now - 30.seconds, end_time: DateTime.now)

          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be false
          expect(json['object_type']).to eq('jobs')
          expect(json['object'].length).to eq(1)
          expect(json['message']).to eq(I18n.t('jobserver.messages.upcoming_jobs.received'))
        end
      end

      response '406', 'Too many jobs specified' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:count) { 21 }
        schema '$ref' => '#/components/schemas/JobArrayMessage'

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(406)
          expect(json['message']).to eq(I18n.t('jobserver.messages.upcoming_jobs.failed'))
        end
      end
    end
  end
end
