class JsonWebToken
  class << self
    def encode(payload)
      payload[:exp] = (Time.current + (ENV.fetch('JWT_EXPIRY_SECONDS', 3600).to_i).seconds).to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue
      nil
    end
  end
end
