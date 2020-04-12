require 'swagger_helper'

describe 'User API' do
  path '/user_api' do
    get 'Retrieves users' do
      description "Get a list of users"
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'

      response '200', 'Users found' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }

        before do |request|
          create(:admin2)
          submit_request(request.metadata)
        end

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json.length).to eq(2)
        end
      end
    end

    post 'Creates a user' do
      description "Create a new user"
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string, description: "The new user's username. Must be unique." },
          password: { type: :string, description: "The new user's password." },
          password_confirmation: { type: :string, description: "The new user's password confirmation. Must match 'password'." }
        }
      }

      response '201', 'User created successfully' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { username: 'barry', password: 'test1234', password_confirmation: 'test1234'}}

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['object']['username']).to eq('barry')
        end
      end

      response '403', 'Username already exists' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:params) { { username: admin.username, password: 'test1234', password_confirmation: 'test1234'}}
        schema oneOf: [{ '$ref' => '#/components/schemas/error' }]

        run_test!
      end
    end
  end

  path '/user_api/{id}' do
    put 'Update a single user' do
      description 'Update a single user'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          password: { type: :string, description: "The user's new password." },
          password_confirmation: { type: :string, description: "The user's new password confirmation. Must match 'password'." }
        }
      }

      response '200', 'The user was returned successfully.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }
        let(:params) { { password: 'password1234', password_confirmation: 'password1234' } }

        run_test!
      end

      response '403', 'The passwords did not match' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }
        let(:params) { { password: 'password123', password_confirmation: 'password1234' } }

        run_test!
      end
    end

    get 'Retrieve a single user' do
      description 'Retrieve a single user'
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'The user was returned successfully.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['id']).to eq(id)
        end
      end

      response '404', 'The user with that id could not be found.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 0 }

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
      description "Deletes a user"
      security [ bearerAuth: [] ]
      consumes 'application/json'
      produces 'application/json'
      parameter name: :id, in: :path, type: :integer

      response '200', 'User deleted successfully' do
        let(:deluser) { create(:admin2) }
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { deluser.id }

        run_test!
      end

      response '403', 'You cannot delete yourself.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { admin.id }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(403)
        end
      end

      response '404', 'The user with that id could not be found.' do
        let(:admin) { create(:admin1) }
        let(:Authorization) { auth_token(admin) }
        let(:id) { 0 }

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['status_code']).to eq(404)
        end
      end
    end
  end
end
