class AuthenUser
  def initialize(email)
    @email = email
  end
t
  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :email

  # verify user credentials
  def user
    user = User.find_by(email: email)
    return user 
    # raise alarm if details are wrong
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end