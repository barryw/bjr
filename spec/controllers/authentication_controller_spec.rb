# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AuthenticationController, type: :controller do
  describe 'POST #authenticate' do
    it 'returns http failure' do
      user = create(:admin1)
      post :authenticate, params: { 'username': user.username, 'password': 'bad_password' }
      expect(response).not_to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['user_id']).to be nil
    end

    it 'returns http success' do
      user = create(:admin1)
      post :authenticate, params: { 'username': user.username, 'password': user.password }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['user_id']).to eq(user.id)
    end
  end
end
