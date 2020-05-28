# frozen_string_literal: true

require 'rails_helper'

RSpec.describe FolderApiController, type: :controller do
  describe 'POST #create' do
    it 'can create a new folder' do
      user = create(:admin1)
      authenticated_header(user)

      post :create, params: { name: 'Test Folder', expression: 'success' }

      expect(response).to have_http_status(:created)
      json = JSON.parse(response.body)

      expect(json['status_code']).to eq(201)
      expect(json['object_type']).to eq('folder')
      expect(json['object']['name']).to eq('Test Folder')
      expect(json['object']['expression']).to eq('success')
    end

    it 'cant create a folder with a name matching an existing folder' do
      user = create(:admin1)
      authenticated_header(user)
      folder1 = create(:success, user: user, name: 'Test Folder')

      post :create, params: { name: 'Test Folder', expression: 'success' }

      expect(response).to have_http_status(:unprocessable_entity)
      json = JSON.parse(response.body)

      expect(json['status_code']).to eq(422)
      expect(json['message']).to eq('Name has already been taken')
    end
  end

  describe 'PUT #update' do
    it 'can update an existing folder' do
      user = create(:admin1)
      authenticated_header(user)
      folder1 = create(:success, user: user, name: 'Success Folder', expression: 'success')

      put :update, params: { id: folder1.id, name: 'Failure Folder', expression: 'failure' }

      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)

      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('folder')
      expect(json['object']['name']).to eq('Failure Folder')
      expect(json['object']['expression']).to eq('failure')
    end

    it 'cant update an existing folder with the name of another folder' do
      user = create(:admin1)
      authenticated_header(user)
      folder1 = create(:success, user: user, name: 'Test Folder')
      folder2 = create(:success, user: user, name: 'Already taken')

      put :update, params: { id: folder1.id, name: 'Already taken' }

      expect(response).to have_http_status(:unprocessable_entity)
      json = JSON.parse(response.body)

      expect(json['status_code']).to eq(422)
      expect(json['message']).to eq('Name has already been taken')
    end
  end

  describe 'DELETE #delete' do
    it 'can delete a folder' do
      user = create(:admin1)
      authenticated_header(user)
      folder1 = create(:success, user: user)

      delete :destroy, params: { id: folder1.id }
      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
    end

    it 'cannot delete another users folder' do
      user1 = create(:admin1)
      user2 = create(:admin2)
      authenticated_header(user1)
      folder1 = create(:success, user: user2)

      delete :destroy, params: { id: folder1.id }
      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'GET #index' do
    it 'gets all of a users folders' do
      user = create(:admin1)
      authenticated_header(user)
      folder1 = create(:success, user: user)
      folder2 = create(:failed, user: user)

      get :index

      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('folderarray')
      expect(json['object'].length).to eq(2)
    end

    it 'doesnt get folders for other users' do
      user1 = create(:admin1)
      user2 = create(:admin2)
      authenticated_header(user1)
      folder1 = create(:success, user: user1)
      folder2 = create(:failed, user: user2)

      get :index

      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('folderarray')
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(folder1.id)
    end
  end

  describe 'GET #show' do
    it 'gets a single folder' do
      user = create(:admin1)
      authenticated_header(user)
      folder1 = create(:success, user: user)

      get :show, params: { id: folder1.id }

      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('folder')
      expect(json['object']['id']).to eq(folder1.id)
      expect(json['object']['name']).to eq(folder1.name)
      expect(json['object']['expression']).to eq(folder1.expression)
    end

    it 'returns a 404 while trying to get non-existent folder' do
      user = create(:admin1)
      authenticated_header(user)

      get :show, params: { id: 1 }

      expect(response).to have_http_status(:not_found)
    end

    it 'returns a 404 while trying to retrieve another users folder' do
      user1 = create(:admin1)
      user2 = create(:admin2)
      authenticated_header(user1)
      folder1 = create(:success, user: user2)

      get :show, params: { id: folder1.id }

      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'GET #jobs' do
    it 'can retrieve jobs matching a folders expression' do
      user = create(:admin1)
      authenticated_header(user)
      folder1 = create(:success, user: user)
      job1 = create(:job1, name: 'job 1', user: user, success: true)
      job2 = create(:job1, name: 'job 2', user: user, success: false)

      get :jobs, params: { id: folder1.id }

      expect(response).to have_http_status(:ok)
      json = JSON.parse(response.body)
      expect(json['status_code']).to eq(200)
      expect(json['object_type']).to eq('jobarray')
      expect(json['object'].length).to eq(1)
      expect(json['object'][0]['id']).to eq(job1.id)
    end
  end
end
