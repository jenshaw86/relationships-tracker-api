require 'faker'

class Api::V1::RelationshipsController < ApplicationController
    def index
        relationships = Relationship.where("user_id = ?", @user.id)
        render :json => relationships, include: [:events]
    end

    def show
        relationship = Relationship.find(params[:id])
        render :json => relationship, include: [:events]
    end

    def create
        relationship = Relationship.new(relationship_params)
        if params[:image] == ''
            image = Faker::Avatar.image
            relationship.image = image
        end
        relationship.save
        render :json => relationship, include: [:events]
    end

    def update
        relationship = Relationship.find(params[:id])
        relationship.update(relationship_params)
        # relationships = Relationship.all
        # render :json => relationships, include: [:events, :relationship_events]
        render :json => relationship, include: [:events]

    end

    def destroy
        relationship = Relationship.find(params[:id])
        relationship.events.each {|ev| ev.destroy}
        relationship.relationship_events.each {|re| re.destroy}
        # relationship.events.each{|ev| ev.destory}
        # do same for join
        relationship.delete()
        relationships = Relationship.where("user_id = ?", @user.id)
        render :json => relationships, include: [:events]
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
            :relationship_type,
            :relationship_length,
            :relationship_description,
            :contact_frequency,
            :user_id
        )
    end
end

