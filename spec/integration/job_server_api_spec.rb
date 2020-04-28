# frozen_string_literal: true

require 'swagger_helper'

describe 'Job Server API' do
  path '/job_server_api/job_runs_per_day' do
    get 'Jobs Per Day' do
      description 'The number of jobs processed and failed by day'
      tags 'JobServer'
      operationId 'jobsPerDay'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :days, in: :query, type: :integer, required: false

      response '200', 'Job processed statistics received successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/JobsPerDay'

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be false
          expect(json['object_type']).to eq('jobs_per_day')
          expect(json['object'].length).to eq(7)
          expect(json['message']).to eq(I18n.t('jobserver.messages.received'))
          expect(Date.parse(json['object'][6]['date'])).to eq(Time.now.utc.to_date)
          expect(Date.parse(json['object'][0]['date'])).to eq(Time.now.utc.to_date - 6.days)
        end
      end

      response '406', 'Too many days specified' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:days) { 31 }
        schema '$ref' => '#/components/schemas/JobsPerDay'

        run_test! do |response|
          json = JSON.parse(response.body)

          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(406)
          expect(json['message']).to eq(I18n.t('jobserver.messages.failed'))
        end
      end
    end
  end
end
