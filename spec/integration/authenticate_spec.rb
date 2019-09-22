require 'swagger_helper'

describe 'Authentication' do
  path '/authenticate' do
    post 'Authenticates a user and returns a token' do
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          username: {type: :string},
          password: {type: :string}
        }
      }

      response '200', 'User authenticated successfully' do
        run_test! do |response|
        end
      end

      response '401', 'User failed authentication' do
        run_test! do |response|
        end
      end
    end
  end
end
