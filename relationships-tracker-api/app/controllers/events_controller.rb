class EventsController < ApplicationController
  def index
    events = Event.where("user_id = ?", params[:user_id]) 
    # .order('start_date ASC')
    render :json => events, include: [:relationships, :relationship_events]
  end

  def show
    event = Event.find(params[:id])
    render :json => event, include: [:relationships, :relationship_events]
  end

  def create
    event = Event.new(event_params)
    if event.save
      event.save
      # message = "#{event.user.first_name} #{event.user.last_name} is inviting you to #{event.name}!"
      # TwilioTextMessenger.new(message).call
      render :json => event, include: [:relationships, :relationship_events]
    else
      render :json => event.errors, status: :unprocessable_entity
    end
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      event.update(event_params)
      # message = "Plans have changed for #{event.name} with #{event.user.first_name}!"
      # TwilioTextMessenger.new(message).call
      # .order('start_date ASC')    
      events = Event.where("user_id = ?", params[:user_id])
      render :json => events, include: [:relationships, :relationship_events]
    else 
      render :json => event.errors, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.delete()
    # message = "#{event.name} with #{event.user.first_name} is cancelled."
    # TwilioTextMessenger.new(message).call
    events = Event.all
    # .order('start_date ASC')        
    render :json => events, include: [:relationships, :relationship_events]  
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