require 'rails_helper'

RSpec.describe AuthenticationController, type: :controller do
  describe "POST #authenticate" do
    it "returns http failure" do
      user = create(:admin1)
      post :authenticate, params: { 'username': user.username, 'password': 'bad_password' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      post :authenticate, params: { 'username': user.username, 'password': user.password }
      expect(response).to have_http_status(:success)
    end
  end
end
