# frozen_string_literal: true

FactoryBot.define do
  factory :admin1, class: User do
    username { 'admin' }
    password { 'password1234' }
    password_confirmation { 'password1234' }
    is_root { false }
  end

  factory :admin2, class: User do
    username { 'l0ser' }
    password { 'imal0ser' }
    password_confirmation { 'imal0ser' }
    is_root { false }
  end

  factory :root, class: User do
    username { 'root' }
    password { 'password1234' }
    password_confirmation { 'password1234' }
    is_root { true }
  end
end
