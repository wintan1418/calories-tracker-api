class ApplicationController < ActionController::API
  # include ActionController::RequestForgeryProtection
  # protect_from_forgery with: :null_session

  include Response
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request
  attr_reader :current_user

  private

  # Check for valid  token and give user
  def authorize_request
    @current_user = (AuthApiRequest.new(request.headers).call)[:user]
  end
end
