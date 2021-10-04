class ApplicationController < ActionController::BASE
  protect_from_forgery with: :exception

  
  include Response
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request
  attr_reader :current_user
  
  # config.middleware.insert_before 0, Rack::Cors do
  #   allow do
  #     origins '*'
  #     resource(
  #       '*',
  #       headers: :any,
  #       methods: [:get, :patch, :put, :delete, :post, :options]
  #       )
  #   end
  # end

  private

  # Check for valid request token and return user
  def authorize_request
    @current_user = (AuthApiRequest.new(request.headers).call)[:user]
  end
end
