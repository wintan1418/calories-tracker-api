class AuthController < ApplicationController
before_action :authorize_request

def permit_request
  AuthorizationServices.new(request.headers).authenticate_request!
rescue JWT:: VerificationError, JWT::DecodeError  
  render json: {errors: ['You are not Authenticating'], status: :unauthorized}
end