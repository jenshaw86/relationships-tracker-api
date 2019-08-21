class RelationshipsController < ApplicationController
    def index
        relationships = Relationship.where("user_id = ?", params[:user_id])
        render :json => relationships, include: [:events, :relationship_events]
    end

    def show
        relationship = Relationship.find(params[:id])
        render :json => relationship, include: [:events, :relationship_events]
    end

    def create
        relationship = Relationship.new(relationship_params)
        relationship.save
        render :json => relationship, include: [:events, :relationship_events]
    end

    def update
        relationship = Relationship.find(params[:id])
        relationship.update(relationship_params)
        # relationships = Relationship.all
        # render :json => relationships, include: [:events, :relationship_events]
        render :json => relationship, include: [:events, :relationship_events]

    end

    def destroy
        relationship = Relationship.find(params[:id])
        relationship.events.each {|ev| ev.destroy}
        relationship.relationship_events.each {|re| re.destroy}
        # relationship.events.each{|ev| ev.destory}
        # do same for join
        relationship.delete()
        relationships = Relationship.all
        render :json => relationships, include: [:events, :relationship_events]
        # render :json -> {message: "successfully deleted", relationship: relationship}
    end

    private 
    def relationship_params
        params.require(:relationship).permit(
            :first_name, 
            :last_name, 
            :email, 
            :phone_number, 
            :image, 
            :birthday, 
            :relationship_type,
            :relationship_length,
            :relationship_description,
            :user_id
        )
    end
end