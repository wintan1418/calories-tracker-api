# class ApplicationController < ActionController::API
        
# rescue_from ActiveRecord:: RecordNotFound, with: :not_found
# rescue_from ActiveRecord:: RecordNotUnique, with: :not_unique
# rescue_from ActiveRecord:: RecordInvalid, with: :invalid

# private

# def not_found(errors)
#   render json: errors,status: :not_found
# end

# def not_unique(errors)
#   render json:errors, status: :internal_server_error
# end

# def invalid(errors)
#   render json:errors, status: :unprocessable_entity
# end

# end


class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request
  attr_reader :current_user

  private

  # Check for valid request token and return user
  def authorize_request
    @current_user = (AuthApiRequest.new(request.headers).call)[:user]
  end
end
