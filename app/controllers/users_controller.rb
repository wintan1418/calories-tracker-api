class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  # skip_before_action :verify_authenticity_token

  def index
    @user = User.all

    render json: @user
  end

  def details
    json_response(current_user)
  end

  def create
    user = User.create!(user_params)
    auth_token = AuthUser.new(user.email, user.password).call
    response = { message: Feedback.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  def info
    json_response(current_user)
  end

  private

  def user_params
    params
      .permit(:username, :email, :password, :sex, :age, :present_measure, :proposed_measure)
  end
end
