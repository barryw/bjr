class ApplicationController < ActionController::API
  around_action :switch_locale
  before_action :authenticate_request

  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    error I18n.t('users.errors.not_authorized'), :unauthorized unless @current_user
  end

  def error(message, status)
    render json: { error: message, status_code: status_msg_to_number(status) }, status: status
  end

  def message(message, status, object={})
    render json: { message: message, object: object, status_code: status_msg_to_number(status) }, status: status
  end

  def status_msg_to_number(status)
    Rack::Utils::SYMBOL_TO_STATUS_CODE[status]
  end

  def switch_locale(&action)
    language = params[:language] || I18n.default_locale
    I18n.with_locale(language, &action)
  end
end
