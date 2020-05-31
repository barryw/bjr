# frozen_string_literal: true

require 'rails_helper'
require 'sidekiq/testing'

RSpec.describe StaticApiController, type: :controller do
  describe 'GET #timezones' do
    it 'returns http failure' do
      get :timezones, params: { 'name': 'foo' }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http success' do
      user = create(:admin1)
      authenticated_header(user)
      get :timezones
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['object'].length).to eq(151)
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('tzarray')
      expect(json['object']).to include('International Date Line West')
      expect(json['object']['International Date Line West']).to eq('Etc/GMT+12')
      expect(json['object']).to include('Samoa')
      expect(json['object']['Samoa']).to eq('Pacific/Apia')
    end
  end

  describe 'GET #tags' do
    it 'returns http failure' do
      get :tags, params: { 'name': 'foo' }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http success and returns the correct list of tags for a user' do
      user1 = create(:admin1)
      user2 = create(:admin2)
      job1 = create(:job1, user: user1, name: 'job1')
      job2 = create(:job1, user: user2, name: 'job2')
      user1.tag job1, with: 'tag1, tag2, tag3', on: :tags
      user2.tag job2, with: 'tag4, tag5', on: :tags
      authenticated_header(user1)
      get :tags
      expect(response).to have_http_status(:success)
      json1 = JSON.parse(response.body)
      expect(json1['object'].length).to eq(3)
      expect(json1['is_error']).to be false
      expect(json1['status_code']).to eq(200)
      expect(json1['object_type']).to eq('tagarray')
      expect(json1['object']).to eq(job1.tags.as_json)
      authenticated_header(user2)
      get :tags
      expect(response).to have_http_status(:success)
      json2 = JSON.parse(response.body)
      expect(json2['object'].length).to eq(2)
      expect(json2['is_error']).to be false
      expect(json2['status_code']).to eq(200)
      expect(json2['object_type']).to eq('tagarray')
      expect(json2['object']).to eq(job2.tags.as_json)
    end
  end

  describe 'GET #health' do
    it 'returns http success' do
      get :health
      expect(response).to have_http_status(:success)
    end
  end
end
