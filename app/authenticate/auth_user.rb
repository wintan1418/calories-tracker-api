class AuthenUser
  def initialize(email)
    @email = email
    @password = password
  end
t
  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :email, :password

  # verify user credentials
  def user
    user = User.find_by(email: email)
    return user if user && user.authenticate(password)
    # raise alarm if details are wrong
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end