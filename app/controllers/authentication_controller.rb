class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:username], params[:password])

    if command.success?
      render json: { auth_token: command.result, message: "", is_error: false }, status: :ok
    else
      render json: { auth_token: "", message: command.errors, is_error: true }, status: :unauthorized
    end
  end
end
