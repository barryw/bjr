# frozen_string_literal: true

#
# Take in a JWT and try to authenticate the user associated with it.
# JWTs are time-limited and will expire based on the value of the env
# var JWT_EXPIRY_SECONDS
#
class AuthorizeApiRequest
  prepend SimpleCommand

  def initialize(headers = {})
    @headers = headers
  end

  def call
    user
  end

  private

  attr_reader :headers

  def user
    @user ||= User.find(decoded_auth_token[:user_id]) if decoded_auth_token
    @user || errors.add(:auth, I18n.t('users.errors.invalid_token')) && nil
  end

  def decoded_auth_token
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  end

  def http_auth_header
    return headers['Authorization'].split(' ').last if headers['Authorization'].present?

    errors.add(:auth, I18n.t('users.errors.missing_token'))
    nil
  end
end
