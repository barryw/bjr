module AuthHelper
  def authenticated_header(user)
    command = AuthenticateUser.call(user.username, user.password)
    request.headers.merge!({ 'Authorization': command.result })
  end
end
