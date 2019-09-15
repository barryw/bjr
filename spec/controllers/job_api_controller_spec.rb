require 'rails_helper'

RSpec.describe JobApiController, type: :controller do
  describe "POST #create" do
    it "returns http failure" do
      post :create, params: { 'name': 'foo' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http failure from duplicated name" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      post :create, params: { 'name': job.name, 'cron': '0 * * * *', command: 'ls -l' }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      authenticated_header(create(:admin1))
      post :create, params: { 'name': 'job', 'cron': '0 10 * * *', command: 'ls -ltr', timezone: 'EST' }
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT #update" do
    it "returns http failure" do
      put :update, params: { 'name': 'foo', 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      put :update, params: { id: job.id, disabled: true }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['disabled']).to eq(true)
    end
  end

  describe "GET #index" do
    it "returns http failure" do
      get :index
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      job1 = create(:job1, user: user, name: 'job1')
      job2 = create(:job1, user: user, name: 'job2')
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

    it "returns http failure because the job doesn't exist" do
      authenticated_header(create(:admin1))
      get :show, params: { 'id': 1 }
      expect(response.status).to eq(404)
    end

    it "returns http success" do
      user = create(:admin1)
      authenticated_header(user)
      job = create(:job1, user: user)
      get :show, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
      json = JSON.parse(response.body)
      expect(json['id']).to equal(job.id)
      expect(json['name']).to eq(job.name)
      expect(json['command']).to eq(job.command)
      expect(json['next_run']).not_to be_nil
    end
  end

  describe "DELETE #destroy" do
    it "returns http failure" do
      delete :destroy, params: { 'id': 1 }
      expect(response).not_to have_http_status(:success)
    end

    it "returns http success" do
      user = create(:admin1)
      job = create(:job1, user: user)
      authenticated_header(user)
      delete :destroy, params: { 'id': job.id }
      expect(response).to have_http_status(:success)
    end
  end
end
