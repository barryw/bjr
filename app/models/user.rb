# frozen_string_literal: true

#
# User model
#
class User < ApplicationRecord
  acts_as_tagger
  has_secure_password
  has_many :jobs, dependent: :destroy
  has_many :folders, dependent: :destroy

  def as_json(_options = {})
    super(only: %i[id username created_at updated_at])
  end
end
