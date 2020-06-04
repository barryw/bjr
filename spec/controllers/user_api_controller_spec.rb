# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserApiController, type: :controller do
  describe 'POST #create' do
    it 'returns http failure' do
      post :create, params: { 'username': 'foo', 'password': 'bar' }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http failure from duplicated username' do
      user = create(:root)
      authenticated_header(user)
      post :create, params: { 'username': user.username, 'password': 'bar' }
      expect(response).not_to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(403)
    end

    it 'returns http success' do
      authenticated_header(create(:root))
      post :create, params: { 'username': 'foo', 'password': 'bar' }
      expect(response).to have_http_status(:success)
    end

    it 'disallows non-root users from creating new users' do
      user = create(:admin1)
      authenticated_header(user)
      post :create, params: { username: 'newuser', password: 'bar', password_confirmation: 'bar' }
      expect(response).not_to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(401)
    end

    it 'allows root users to create new users' do
      user = create(:root)
      authenticated_header(user)
      post :create, params: { username: 'newuser', password: 'bar', password_confirmation: 'bar' }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(201)
    end
  end

  describe 'PUT #update' do
    it 'returns http failure' do
      put :update, params: { id: 1 }
      expect(response).not_to have_http_status(:success)
    end

    it 'allows non-root users to update their own account' do
      user = create(:admin1)
      authenticated_header(user)
      put :update, params: { id: user.id, password: 'blah' }
      expect(response).to have_http_status(:success)
    end

    it 'disallows non-root users from updating other users' do
      user = create(:admin1)
      user2 = create(:admin2)
      authenticated_header(user)
      put :update, params: { id: user2.id, password: 'blah' }
      expect(response).not_to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(404)
    end

    it 'allows root users to update other users' do
      user = create(:root)
      user2 = create(:admin2)
      authenticated_header(user)
      put :update, params: { id: user2.id, password: 'blah' }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #index' do
    it 'returns http failure' do
      get :index
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http success' do
      user = create(:root)
      user2 = create(:admin2)
      authenticated_header(user)
      get :index
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['is_error']).to be false
      expect(json['object_type']).to eq('userarray')
      expect(json['object'].length).to eq(2)
      expect(json['object'][0]['id']).to eq(user.id)
      expect(json['object'][1]['id']).to eq(user2.id)
    end

    it 'only returns the current user for non-root users' do
      user = create(:admin1)
      user2 = create(:admin2)
      authenticated_header(user)
      get :index
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['is_error']).to be false
      expect(json['object_type']).to eq('userarray')
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(user.id)
    end

  end

  describe 'GET #show' do
    it 'returns http failure' do
      get :show, params: { id: 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure because the user doesn't exist" do
      user = create(:root)
      authenticated_header(user)
      get :show, params: { id: user.id + 1 }
      expect(response.status).to eq(404)
    end

    it 'returns http success' do
      user = create(:admin1)
      authenticated_header(user)
      get :show, params: { id: user.id }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['is_error']).to be false
      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('user')
      expect(json['object']['id']).to equal(user.id)
      expect(json['object']['username']).to eq(user.username)
    end

    it 'disallows non-root users from fetching other users' do
      user = create(:admin1)
      user2 = create(:admin2)
      authenticated_header(user)
      get :show, params: { id: user2.id }
      expect(response.status).to eq(404)
    end

    it 'allows root users to fetch any user' do
      user = create(:root)
      user2 = create(:admin2)
      authenticated_header(user)
      get :show, params: { id: user2.id }
      expect(response.status).to eq(200)
    end
  end

  describe 'DELETE #destroy' do
    it 'returns http failure' do
      delete :destroy, params: { id: 1 }
      expect(response).not_to have_http_status(:success)
    end

    it 'returns http failure while trying to delete ourselves' do
      user = create(:root)
      authenticated_header(user)
      delete :destroy, params: { id: user.id }
      expect(response.status).to eq(403)
    end

    it 'allows root users to delete any other user' do
      user = create(:root)
      l0ser = create(:admin2)
      authenticated_header(user)
      delete :destroy, params: { id: l0ser.id }
      expect(response).to have_http_status(:success)
    end

    it 'disallows non-root users from deleting other users' do
      user = create(:admin1)
      l0ser = create(:admin2)
      authenticated_header(user)
      delete :destroy, params: { id: l0ser.id }
      expect(response).not_to have_http_status(:success)
    end

  end
end
