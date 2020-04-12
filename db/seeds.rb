# frozen_string_literal: true

User.where(username: 'admin').first_or_create do |user|
  user.password = ENV.fetch('INITIAL_ADMIN_PASSWORD', 'password1234')
  user.password_confirmation = ENV.fetch('INITIAL_ADMIN_PASSWORD', 'password1234')
end
