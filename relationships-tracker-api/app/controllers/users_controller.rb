class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render :json => user, include: [:relationships, :events]
    end

    def update
    end
end
