
class JsonWebToken
  WINTAN = Rails.application.secrets.secret_key_base
  
    def self.encode(payload, exp = 24.hours.from_now)
      # set timeout to 24 hours from time generated
      payload[:exp] = exp.to_i
      # 
      JWT.encode(payload, WINTAN)
    end
  
    def self.decode(token)
      # get payload;
      body = JWT.decode(token, WINTAN)[0]
      HashWithIndifferentAccess.new body
      # grab all errors
    rescue JWT::DecodeError => e
      raise ExceptionHandler::InvalidToken, e.message
    end
end