class AuthController < ApplicationController
# before_action :authorize_request

def authorize_request
  AuthorizationSessions.new(request.headers).permit_request!
rescue JWT:: VerificationError, JWT::DecodeError  
  render json: {errors: ['You are not Authenticating'], status: :unauthorized}
end
end