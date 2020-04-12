module AuthHelper
  def authenticated_header(user)
    ENV["JWT_EXPIRY_SECONDS"] = "3600"
    token = auth_token(user)
    request.headers.merge!({ 'Authorization': token })
  end

  def auth_token(user)
    AuthenticateUser.call(user.username, user.password).result
  end
end
