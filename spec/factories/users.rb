FactoryBot.define do
  factory :admin1, class: User do
    username { 'admin' }
    password { 'password1234' }
    password_confirmation { 'password1234' }
  end

  factory :admin2, class: User do
    username { 'l0ser' }
    password { 'imal0ser' }
    password_confirmation { 'imal0ser' }
  end
end
