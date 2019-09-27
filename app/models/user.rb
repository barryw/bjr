class User < ApplicationRecord
  acts_as_tagger
  has_secure_password
  has_many :jobs, dependent: :destroy
end
