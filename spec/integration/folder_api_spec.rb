# frozen_string_literal: true

require 'swagger_helper'

describe 'Folder API' do
  path '/folder_api' do
    get 'Return paginated list of all folders' do
      description 'Return paginated list of all folders'
      tags 'Folders'
      operationId 'getFolders'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :per_page, in: :query, type: :integer, required: false
      parameter name: :page, in: :query, type: :integer, required: false

      response '200', 'Folders returned successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/FolderArrayMessage'

        before do |request|
          create(:success, user: admin, name: 'Successful jobs')
          create(:failed, user: admin, name: 'Failed jobs')
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
          expect(json['is_error']).to be false
          expect(json['object'].length).to eq(2)
          expect(json['object'][0]['name']).to eq('Successful jobs')
          expect(json['object'][1]['name']).to eq('Failed jobs')
        end
      end
    end

    post 'Create a new Folder' do
      description 'Create a new Folder'
      tags 'Folders'
      operationId 'createFolder'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :name, in: :query, type: :string, required: true
      parameter name: :expression, in: :query, type: :string, required: true

      response '201', 'Folder created successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:name) { 'Successful Jobs' }
        let(:expression) { 'success' }
        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(201)
          expect(json['is_error']).to be false
          expect(json['object']['name']).to eq('Successful Jobs')
          expect(json['object']['expression']).to eq('success')
        end
      end

      response '422', 'Failed to create new folder' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:name) { 'Successful Jobs' }
        let(:expression) { 'success' }
        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        before do |request|
          create(:success, user: admin, name: 'Successful Jobs')
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(422)
          expect(json['is_error']).to be true
        end
      end
    end
  end

  path '/folder_api/{id}' do
    get 'Return a single folder' do
      description 'Return a single folder'
      tags 'Folders'
      operationId 'getFolder'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer, required: true

      response '200', 'Folder returned successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:folder) { create(:success, user: admin, name: 'Successful Jobs') }
        let(:id) { folder.id }
        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
          expect(json['is_error']).to be false
          expect(json['object']['id']).to eq(folder.id)
          expect(json['object']['name']).to eq(folder.name)
          expect(json['object']['expression']).to eq(folder.expression)
        end
      end

      response '404', 'Folder not found' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 1 }
        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
          expect(json['is_error']).to be true
        end
      end
    end

    put 'Update an existing folder' do
      description 'Update an existing folder'
      tags 'Folders'
      operationId 'updateFolder'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer, required: true
      parameter name: :name, in: :query, type: :string, required: false
      parameter name: :expression, in: :query, type: :string, required: false

      response '200', 'Folder updated successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:folder) { create(:success, user: admin, name: 'Successful Jobs') }
        let(:id) { folder.id }
        let(:name) { 'Failed Jobs' }
        let(:expression) { 'failed' }

        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
          expect(json['is_error']).to be false
          expect(json['object']['name']).to eq('Failed Jobs')
          expect(json['object']['expression']).to eq('failed')
        end
      end

      response '404', 'Folder not found' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 1 }
        let(:name) { 'Failed Jobs' }
        let(:expression) { 'failed' }

        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
          expect(json['is_error']).to be true
        end
      end

      response '422', 'Failed to update folder' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:folder1) { create(:success, user: admin, name: 'Successful Jobs') }
        let(:id) { folder1.id }
        let(:name) { 'Failed Jobs' }
        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        before do |request|
          create(:failed, user: admin, name: 'Failed Jobs')
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(422)
          expect(json['is_error']).to be true
        end
      end
    end

    delete 'Delete an existing folder' do
      description 'Delete an existing folder'
      tags 'Folders'
      operationId 'deleteFolder'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer, required: true

      response '200', 'Folder deleted successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:folder) { create(:success, user: admin, name: 'Successful Jobs') }
        let(:id) { folder.id }
        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
          expect(json['is_error']).to be false
        end
      end

      response '404', 'Folder not found' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 1 }
        schema '$ref' => '#/components/schemas/SingleFolderMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
          expect(json['is_error']).to be true
        end
      end
    end
  end

  path '/folder_api/{id}/jobs' do
    get 'Return list of jobs in a folder' do
      description 'Return list of jobs in a folder'
      tags 'Folders'
      operationId 'getFolderJobs'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :per_page, in: :query, type: :integer, required: false
      parameter name: :page, in: :query, type: :integer, required: false
      parameter name: :id, in: :path, type: :integer, required: true

      response '200', 'Jobs returned successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:folder) { create(:success, user: admin, name: 'Successful Jobs', expression: 'success') }
        let(:id) { folder.id }
        schema '$ref' => '#/components/schemas/JobArrayMessage'

        before do |request|
          create(:job1, user: admin, name: 'Job 1', success: true)
          create(:job1, user: admin, name: 'Job 2', success: true)
          create(:job1, user: admin, name: 'Job 3', success: false)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(200)
          expect(json['is_error']).to be false
          expect(json['object_type']).to eq('jobarray')
          expect(json['object'][0]['name']).to eq('Job 1')
          expect(json['object'][1]['name']).to eq('Job 2')
        end
      end

      response '404', 'Folder not found' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 1 }
        schema '$ref' => '#/components/schemas/SingleJobMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
          expect(json['is_error']).to be true
        end
      end
    end
  end
end
