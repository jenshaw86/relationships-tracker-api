class UsersController < ApplicationController
    def index
        users = User.all
        render :json => users
    end

    def show
        user = User.find(params[:id])
        userData = Hash.new
        userData[:user] = user
        userData[:events] = user.events
        userData[:events] = user.events.map do |event|
            hh = Hash.new
            hh[:event] = event
            hh[:relationships] = event.relationships
            hh
        end
        userData[:relationships] = user.relationships.map do |relationship|
            hh = Hash.new
            hh[:relationships] = relationship
            hh[:events] = relationship.events
            hh
        end
        userData
        render :json => userData
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
