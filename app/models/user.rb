class User < ApplicationRecord
  acts_as_tagger
  has_secure_password
  has_many :jobs, dependent: :destroy

  # Called when the job is rendered as JSON
  def as_json(options = {})
    super(only: [:id, :username, :created_at, :updated_at])
  end
end
