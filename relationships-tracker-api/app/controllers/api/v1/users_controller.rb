class Api::V1::UsersController < ApplicationController
  # skip_before_action :authorized, only: [:create]

  def account 
    render json: {user: UserSerializer.new(current_user)}, status: :accepted
  end

  def create
    password_digest = BCrypt::Password.create(params[:password]).to_s
    @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password_digest: password_digest)
    if @user.valid?
      @token = issue_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token}, status: :created
    else 
      render json: {error: 'failed to create user'}, status: :not_acceptable
    end
  end


  def update
      user = User.find(params[:id])
      user.update(user_params)
      render :json => user
  end

  # private 
  def user_params
      params.require(:user).permit(
          :first_name, 
          :last_name, 
          :email, 
          :phone_number, 
          :image, 
          :user_id,
          :password
      )
  end
end
