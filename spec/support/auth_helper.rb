module AuthHelper
  def authenticated_header(user)
    ENV["JWT_EXPIRY_SECONDS"] = "3600"
    command = AuthenticateUser.call(user.username, user.password)
    request.headers.merge!({ 'Authorization': command.result })
  end
end
