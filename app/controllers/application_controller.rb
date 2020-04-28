# frozen_string_literal: true

#
# Base class of all API controllers. Handles low-level stuff like authentication and message
# uniformity.
#
class ApplicationController < ActionController::API
  include HttpAcceptLanguage::AutoLocale
  before_action :authenticate_request
  before_action :set_timezone

  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    error I18n.t('users.errors.not_authorized'), :unauthorized unless @current_user
  end

  def set_timezone
    Time.zone = params[:timezone] if params.key? :timezone
  rescue StandardError
    logger.warn I18n.t('common.errors.invalid_timezone', timezone: params[:timezone],
                                                         timezone_list_url: static_api_timezones_url)
  end

  def error(message, status)
    message(message, status, true)
  end

  def message(message, status, is_error = false, object = {}, object_type = '')
    render json: { message: message, is_error: is_error, object: object, object_type: object_type,
                   status_code: status_msg_to_number(status) }, status: status
  end

  def status_msg_to_number(status)
    Rack::Utils::SYMBOL_TO_STATUS_CODE[status]
  end
end
