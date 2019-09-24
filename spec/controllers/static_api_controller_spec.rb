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
end
