# frozen_string_literal: true

require 'swagger_helper'

describe 'Static API' do
  path '/version' do
    get 'Server version' do
      description 'The BJR server version'
      tags 'Static'
      operationId 'getVersion'
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Server version received successfully' do
        schema '$ref' => '#/components/schemas/ServerVersion'

        run_test! do |response|
          json = JSON.parse(response.body)
          version = File.read("#{Rails.root}/.version").strip
          expect(json['object']).to eq(version)
          expect(json['is_error']).to be false
          expect(json['object_type']).to eq('version')
        end
      end
    end
  end

  path '/timezones' do
    get 'Get timezones' do
      description 'Get the list of acceptable timezone names.'
      tags 'Static'
      operationId 'getTimezones'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Timezones received successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/TimezoneMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object'].length).to eq(151)
          expect(json['object']).to include('Pacific Time (US & Canada)')
          expect(json['object']).to include('Amsterdam')
          expect(json['object']).to include('Tokyo')
          expect(json['object']).to include('Wellington')
          expect(json['object']).to include('Eastern Time (US & Canada)')
        end
      end
    end
  end

  path '/tags' do
    get 'Get tags' do
      description 'Retrieves the list of tags that are currently in use for the authenticated user.'
      tags 'Static'
      operationId 'getTags'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :per_page, in: :query, type: :integer, required: false
      parameter name: :page, in: :query, type: :integer, required: false

      response '200', 'Tags received successfully' do
        header 'per-page', schema: { type: :integer }, description: 'The number of items in this page.'
        header 'total', schema: { type: :integer }, description: 'The total number of items available.'
        let(:admin) { create(:admin1) }
        let(:admin) { create(:admin1) }
        let(:job1) { create(:job1, user: admin) }
        let(:job2) { create(:job2, user: admin) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/TagMessage'

        before do |request|
          job1.tag('tag1,tag2,tag3')
          job2.tag('tag3, tag4, tag5')
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json.length).to eq(5)
          expect(json['object'][0]['name']).to eq('tag1')
          expect(json['object'][0]['taggings_count']).to eq(1)
          expect(json['object'][1]['name']).to eq('tag2')
          expect(json['object'][1]['taggings_count']).to eq(1)
          expect(json['object'][2]['name']).to eq('tag3')
          expect(json['object'][2]['taggings_count']).to eq(2)
          expect(json['object'][3]['name']).to eq('tag4')
          expect(json['object'][3]['taggings_count']).to eq(1)
          expect(json['object'][4]['name']).to eq('tag5')
          expect(json['object'][4]['taggings_count']).to eq(1)
        end
      end
    end
  end
end
