require 'faker'

class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def account 
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

  def create
    image = Faker::Avatar.image
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password], image: image)
    if @user.valid?
      render json: { user: UserSerializer.new(@user)}, status: :created
    else 
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render :json => {user: UserSerializer.new(user)}
  end

  private 
  def user_params
      params.require(:user).permit(
          :first_name, 
          :last_name,   
          :email,
          :image, 
          :phone_number
      )
  end
end
