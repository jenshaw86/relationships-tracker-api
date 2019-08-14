class UsersController < ApplicationController
    def index
        users = User.all
        render :json => users
    end

    def show
        user = User.find(params[:id])
        render :json => user
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
            :phone_number, 
            :image, 
            :user_id
        )
    end
end
