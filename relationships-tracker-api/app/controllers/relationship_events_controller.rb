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
    if relationship_event.save 
      relationship_event.save
      user = "#{relationship_event.event.user.first_name} #{relationship_event.event.user.last_name}"
      event = relationship_event.event.name
      recipient_name = relationship_event.relationship
      recipient_number = relationship_event.relationship.phone_number
      message = "Hey #{recipient_name}! #{user} wants to invite you to #{event}!"
      TwilioTextMessenger.new(message, recipient_number).call
      render :json => relationship_event
    else
      render :json => relationship_event.errors, status: :unprocessable_entity
    end
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
