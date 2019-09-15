require 'rails_helper'

def authenticated_header(user)
  command = AuthenticateUser.call(user.username, user.password)
  request.headers.merge!({ 'Authorization': command.result })
end

RSpec.describe UserApiController, type: :controller do
  describe "POST #create" do
    it "returns http failure" do
      post :create, params: { 'username': 'foo', 'password': 'bar' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure from duplicated username" do
      user = create(:admin1)
      authenticated_header(user)
      post :create, params: { 'username': user.username, 'password': 'bar' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      authenticated_header(create(:admin1))
      post :create, params: { 'username': 'foo', 'password': 'bar' }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it "returns http failure" do
      put :update, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      authenticated_header(user)
      put :update, params: { 'id': user.id, password: 'blah' }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http failure" do
      get :index
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      l0ser = create(:admin2)
      authenticated_header(user)
      get :index
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json.length).to eq(2)
    end
  end

  describe "GET #show" do
    it "returns http failure" do
      get :show, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure because the user doesn't exist" do
      user = create(:admin1)
      authenticated_header(user)
      get :show, params: { 'id': user.id + 1 }
      expect(response.status).to eq(404)
    end

    it "returns http success" do
      user = create(:admin1)
      authenticated_header(user)
      get :show, params: { 'id': user.id }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['id']).to equal(user.id)
      expect(json['username']).to eq(user.username)
    end
  end

  describe "DELETE #destroy" do
    it "returns http failure" do
      delete :destroy, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure while trying to delete ourselves" do
      user = create(:admin1)
      authenticated_header(user)
      delete :destroy, params: { 'id': user.id }
      expect(response.status).to eq(403)
    end

    it "returns http success while deleting another user" do
      user = create(:admin1)
      l0ser = create(:admin2)
      authenticated_header(user)
      delete :destroy, params: { 'id': l0ser.id }
      expect(response).to have_http_status(:success)
    end
  end
end
