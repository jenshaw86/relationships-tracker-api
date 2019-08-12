class RelationshipEventsController < ApplicationController
  def index
    relationshipEvents = RelationshipEvent.all
    render :json => relationshipEvents
  end

  def create
    relationshipEvent = RelationshipEvent.new(relationship_event_params)
    relationshipEvent.save
    render :json => relationshipEvent
  end

  private 
    def relationship_event_params
        params.require(:relationship_event).permit(
            :relationship_id, 
            :event_id
        )
    end
end
