class UsersController < ApplicationController
    def index
        users = User.all
        render :json => users, include: [:relationships, :events]
    end

    def show
        user = User.find(params[:id])
        render :json => user, include: [:relationships, :events]
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        users = User.all
        render :json => Users, include: [:relationships, :events]
    end
end
