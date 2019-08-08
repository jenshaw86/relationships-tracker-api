class RelationshipsController < ApplicationController
    def index
        relationships = Relationship.all
        render :json => relationships
    end

    def show
        relationship = Relationship.find(params[:id])
        render :json => relationship
    end

    def new 
        relationship = Relationship.new
        render :json => relationship
    end

    def create
        relationship = Relationship.new(relationship_params)
        relationship.save
        render :json => relationship
    end

    def edit 
        relationship = Relationship.find(params[:id])
        render :json => relationship
    end

    def update
        relationship = Relationship.find(params[:id])
        relationship.update(relationship_params)
        relationships = Relationship.all
        render :json => relationships
    end

    def destroy
        relationship = Relationship.find(params[:id])
        relationship.delete()
        relationships = Relationship.all
        render :json => relationships       
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