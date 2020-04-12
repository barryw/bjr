require 'swagger_helper'

describe 'Authentication' do
  path '/authenticate' do
    post 'Authenticates a user and returns a token' do
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          username: { type: :string },
          password: { type: :string }
        }
      }

      response '200', 'User authenticated successfully' do
        let(:admin) { create(:admin1) }
        let(:params) { { username: admin.username, password: admin.password } }
        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['auth_token']).to_not be_nil
        end
      end

      response '401', 'User failed authentication' do
        let(:params) { { username: 'bogus', password: 'user' } }
        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['auth_token']).to eq('')
          expect(json['is_error']).to be true
          expect(json['message']['user_authentication']).to eq('Invalid credentials')
        end
      end

      response '401', 'You need to supply credentials, there, yoohoo.' do
        let(:params) {{ }}
        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['auth_token']).to eq('')
          expect(json['is_error']).to be true
          expect(json['message']['user_authentication']).to eq('Invalid credentials')
        end
      end
    end
  end
end
