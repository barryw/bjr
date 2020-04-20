# frozen_string_literal: true

require 'swagger_helper'

describe 'Static API' do
  path '/static_api/timezones' do
    get 'Get timezones' do
      description 'Get the list of acceptable timezone names.'
      tags 'Static'
      operationId 'getTags'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Timezones received successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/StringArray'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json.length).to eq(151)
          expect(json).to include('Pacific Time (US & Canada)')
          expect(json).to include('Amsterdam')
          expect(json).to include('Tokyo')
          expect(json).to include('Wellington')
          expect(json).to include('Eastern Time (US & Canada)')
        end
      end
    end
  end

  path '/static_api/tags' do
    get 'Get tags' do
      description 'Retrieves the list of tags that are currently in use for the authenticated user.'
      tags 'Static'
      operationId 'getTags'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Tags received successfully' do
        let(:admin) { create(:admin1) }
        let(:job1) { create(:job1, user: admin) }
        let(:job2) { create(:job2, user: admin) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/TagArray'

        before do |request|
          job1.tag(admin, 'tag1,tag2,tag3')
          job2.tag(admin, 'tag3, tag4, tag5')
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json.length).to eq(5)
          expect(json[0]['name']).to eq('tag1')
          expect(json[0]['taggings_count']).to eq(1)
          expect(json[1]['name']).to eq('tag2')
          expect(json[1]['taggings_count']).to eq(1)
          expect(json[2]['name']).to eq('tag3')
          expect(json[2]['taggings_count']).to eq(2)
          expect(json[3]['name']).to eq('tag4')
          expect(json[3]['taggings_count']).to eq(1)
          expect(json[4]['name']).to eq('tag5')
          expect(json[4]['taggings_count']).to eq(1)
        end
      end
    end
  end
end
