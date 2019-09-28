require 'rails_helper'

RSpec.describe StaticApiController, type: :controller do
  describe "GET #timezones" do
    it "returns http failure" do
      get :timezones, params: { 'name': 'foo' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      authenticated_header(user)
      get :timezones
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(151)
      expect(json[0]).to eq('International Date Line West')
      expect(json[150]).to eq('Samoa')
    end
  end

  describe "GET #tags" do
    it "returns http failure" do
      get :tags, params: { 'name': 'foo' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success and returns the correct list of tags for a user" do
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
      expect(json1.length).to eq(3)
      expect(json1).to eq(job1.tags.as_json)
      authenticated_header(user2)
      get :tags
      expect(response).to have_http_status(:success)
      json2 = JSON.parse(response.body)
      expect(json2.length).to eq(2)
      expect(json2).to eq(job2.tags.as_json)
    end
  end
end
