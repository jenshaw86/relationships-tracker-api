class Api::V1::EventsController < ApplicationController
  def index
    events = Event.where("user_id = ?", @user.id)
    render :json => events, include: [:relationships]
  end

  def show
    event = Event.find(params[:id])
    render :json => event, include: [:relationships]
  end

  def create
    event = Event.new(event_params)
    if event.save
      # event.save
      render :json => event, include: [:relationships]
    else
      render :json => event.errors, status: :unprocessable_entity
    end
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      event.update(event_params)
      user_id = event.user_id
      # message = "Plans have changed for #{event.name} with #{event.user.first_name}!"
      # TwilioTextMessenger.new(message).call
      # .order('start_date ASC')    
      # events = Event.where("user_id = ?", user_id)
      # render :json => events, include: [:relationships, :relationship_events]
      render :json => event, include: [:relationships]
    else 
      render :json => event.errors, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    user_id = event.user_id
    event.relationship_events.each {|re| re.destroy}
    event.delete()
    # message = "#{event.name} with #{event.user.first_name} is cancelled."
    # TwilioTextMessenger.new(message).call
    events = Event.where("user_id = ?", user_id) 
    # .order('start_date ASC')        
    render :json => events, include: [:relationships]  
  end

  private 
  def event_params
    params.require(:event).permit(
      :name, 
      :start_date, 
      :end_date, 
      :location, 
      :description,
      :user_id
    )
  end
end