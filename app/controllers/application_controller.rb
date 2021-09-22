class ApplicationController < ActionController::API
rescue_from ActiveRecord:: RecordNotFound, with: :not_found
rescue_from ActiveRecord:: RecordNotUnique, with: :not_unique
rescue_from ActiveRecord:: RecordInvalid, with: :invalid

private

def not_found(errors)
  render json: errors,status: :not_found
end

end
