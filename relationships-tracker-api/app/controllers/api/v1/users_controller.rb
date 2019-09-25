class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def account 
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

  def create
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
    if @user.valid?
      render json: { user: UserSerializer.new(@user)}, status: :created
    else 
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def update
      user = User.find(params[:id])
      user.update(user_params)
      render :json => user
  end

  private 
  def user_params
      params.require(:user).permit(
          :first_name, 
          :last_name, 
          :email, 
          # :password
          # :phone_number, 
          # :image, 
          # :user_id
      )
  end
end
