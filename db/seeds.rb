User.where(username: 'admin').first_or_create do |user|
  user.password = 'password1234'
  user.password_confirmation = 'password1234'
end
