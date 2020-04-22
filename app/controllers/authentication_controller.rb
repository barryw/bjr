# frozen_string_literal: true

#
# Handles the /authenticate route
#
class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:username], params[:password])

    if command.success?
      render json: { auth_token: command.result, message: '', is_error: false, status_code: 200 }, status: :ok
    else
      render json: { auth_token: '', message: command.errors[:auth][0], is_error: true, status_code: 401 }, status: :unauthorized
    end
  end
end
