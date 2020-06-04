# frozen_string_literal: true

require 'swagger_helper'

describe 'User API' do
  path '/user_api' do
    get 'Retrieves users' do
      description 'Get a list of users'
      tags 'Users'
      operationId 'getUsers'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :per_page, in: :query, type: :integer, required: false
      parameter name: :page, in: :query, type: :integer, required: false

      response '200', 'Users found' do
        header 'per-page', schema: { type: :integer }, description: 'The number of items in this page.'
        header 'total', schema: { type: :integer }, description: 'The total number of items available.'
        let(:admin) { create(:root) }
        let(:Authorization) { auth_token(admin) }
        schema '$ref' => '#/components/schemas/UserArrayMessage'

        before do |request|
          create(:admin2)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object'].length).to eq(2)
        end
      end
    end

    post 'Creates a user' do
      description 'Create a new user. Only root users are allowed to create new users.'
      tags 'Users'
      operationId 'createUser'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: { '$ref' => '#/components/schemas/UserNewIn' }

      response '201', 'User created successfully' do
        let(:admin) { create(:root) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { username: 'barry', password: 'test1234', password_confirmation: 'test1234' } }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object']['username']).to eq('barry')
        end
      end

      response '403', 'Username already exists' do
        let(:admin) { create(:root) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { username: admin.username, password: 'test1234', password_confirmation: 'test1234' } }

        run_test!
      end
    end
  end

  path '/user_api/{id}' do
    put 'Update a single user' do
      description 'Update a single user. If you\'re a non-root users, then you can only update your own user.'
      tags 'Users'
      operationId 'updateUser'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer
      parameter name: :params, in: :body, schema: { '$ref' => '#/components/schemas/UserUpdateIn' }

      response '200', 'The user was returned successfully.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }
        let(:params) { { password: 'password1234', password_confirmation: 'password1234' } }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test!
      end

      response '403', 'The passwords did not match' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }
        let(:params) { { password: 'password123', password_confirmation: 'password1234' } }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be true
          expect(json['status_code']).to eq(403)
        end
      end
    end

    get 'Retrieve a single user' do
      description 'Retrieve a single user. If you\'re a non-root user, then you can only retrieve your own user.'
      tags 'Users'
      operationId 'getUser'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'The user was returned successfully.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['is_error']).to be false
          expect(json['status_code']).to eq(200)
          expect(json['object_type']).to eq('user')
          expect(json['object']['id']).to eq(id)
        end
      end

      response '404', 'The user with that id could not be found.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 0 }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end

      response '401', 'Your token is invalid or expired' do
        let(:Authorization) { 'blah' }
        let(:id) { 0 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(401)
        end
      end
    end

    delete 'Deletes a user' do
      description 'Deletes a user. Only root users can delete other users.'
      tags 'Users'
      operationId 'deleteUser'
      security [bearerAuth: []]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'User deleted successfully' do
        let(:deluser) { create(:admin2) }
        let(:admin) { create(:root) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { deluser.id }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test!
      end

      response '403', 'You cannot delete yourself.' do
        let(:admin) { create(:root) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(403)
        end
      end

      response '404', 'The user with that id could not be found.' do
        let(:admin) { create(:root) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 0 }
        schema '$ref' => '#/components/schemas/SingleUserMessage'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end
    end
  end
end
