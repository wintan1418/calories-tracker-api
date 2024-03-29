class AuthController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  # skip_before_action :verify_authenticity_token

  # return auth token once user is authenticated
  def authenticate
    auth_token = AuthUser.new(auth_params[:email], auth_params[:password]).call
    json_response(auth_token: auth_token)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end
