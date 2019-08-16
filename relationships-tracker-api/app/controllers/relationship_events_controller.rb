class RelationshipEventsController < ApplicationController
  def index
    relationship_events = RelationshipEvent.all
    render :json => relationship_events
  end

  def show 
    relationship_event = RelationshipEvent.find(params[:id])
    render :json => relationship_event
  end

  def create
    relationship_event = RelationshipEvent.new(relationship_event_params)
    relationship_event.save
    render :json => relationship_event
  end

  def update
    relationship_event = RelationshipEvent.find(params[:id])
    relationship_event.update(relationship_event_params)
    render :json => relationship_event
  end

  def destroy
    relationship_event = RelationshipEvent.find(params[:id])
    relationship_event.delete()
    relationship_events = RelationshipEvent.all
    render :json => relationship_events
  end

  private 
    def relationship_event_params
        params.require(:relationship_event).permit(
            :relationship_id, 
            :event_id
        )
    end
end
