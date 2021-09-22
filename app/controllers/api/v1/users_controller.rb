class Api::v1::UsersController < AuthController

def create
  @user = User.find_by(email:params[:email ])
  return render json: {success: false, message: 'There is a user with this Email'}, status: 409 if @user

  user =User.create!(user_params)
  render json: user, status: :successful_creation
end

def show
  @user = User.find(params[:email])
  return render json: @user, status: :ok if @user
end

private

def user_params
  params.permit(username, :email)
end

end
