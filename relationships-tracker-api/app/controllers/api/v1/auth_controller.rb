class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      token = issue_token(@user)
      render json: {user: UserSerializer.new(@user), jwt: token}, status: :accepted
    else
      render json: {error: 'Invalid email or password'}, status: :unauthorized
    end
  end

  def show
    if logged_in?
      render json: { id: current_user.id, email: current_user.email }
    else
      render json: {error: 'No user could be found'}, status: :unauthorized
    end
  end
end
