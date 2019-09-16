class ApplicationController < ActionController::API
  before_action :authenticate_request

  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    error 'Not Authorized', :unauthorized unless @current_user
  end

  def error(message, status)
    render json: { error: message }, status: status
  end
end
