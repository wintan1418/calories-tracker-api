class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

def index
@user =User.all

render json: @user
end

  def create
  # @user = User.find_by(email:params[:email ])
  # return render json: {success: false, message: 'There is a user with this Email'}, status: 409 if @user

  user =User.create!(user_params)
  auth_token = AuthenticateUser.new(user.email, user.password).call
  response = { message: Message.account_created, auth_token: auth_token }
  json_response(response, :created)
end

def show
  @user = User.find(params[:id])
   render json: @user, status: :ok if @user
end

private

def user_params
  params.require(:user)
        .permit(:username, :email, :password, :sex, :age, :present_measure, :proposed_measure)
end

end
