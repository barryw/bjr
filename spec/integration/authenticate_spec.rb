# frozen_string_literal: true

require 'swagger_helper'

describe 'Authentication' do
  path '/authenticate' do
    post 'Authenticates a user and returns a token' do
      consumes 'application/json'
      produces 'application/json'
      parameter name: :params, in: :body, schema: { '$ref' => '#/components/schemas/auth_in' }

      response '200', 'User authenticated successfully' do
        let(:admin) { create(:admin1) }
        let(:params) { { username: admin.username, password: admin.password } }
        schema '$ref' => '#/components/schemas/auth_out'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['auth_token']).to_not be_nil
          expect(json['is_error']).to be false
        end
      end

      response '401', 'User failed authentication' do
        let(:params) { { username: 'bogus', password: 'user' } }
        schema '$ref' => '#/components/schemas/auth_out'

        run_test! do |response|
          json = JSON.parse(response.body)
          expect(json['auth_token']).to eq('')
          expect(json['is_error']).to be true
          expect(json['message']).to eq(I18n.t('users.errors.invalid_credentials'))
        end
      end
    end
  end
end
