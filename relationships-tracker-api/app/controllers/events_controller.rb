class EventsController < ApplicationController
  def index
    events = Event.all.order('start_date ASC')
    render :json => events, include: [:relationships]
  end

  def show
    event = Event.find(params[:id])
    render :json => event, include: [:relationships]
  end

  def new 
    event = Event.new
    render :json => event
  end

  def create
    event = Event.new(event_params)
    if event.save
      event.save
      message = "A new event, #{event.name}, was just created!"
      TwilioTextMessenger.new(message).call
      render :json => event, include: [:relationships]
    else
      render :json => event.errors, status: :unprocessable_entity
    end
  end

  def edit 
    event = Event.find(params[:id])
    render :json => event, include: [:relationships]
  end

  def update
    event = Event.find(params[:id])
    event.update(event_params)
    events = Event.all.order('start_date ASC')        
    render :json => events, include: [:relationships]
  end

  def destroy
    event = Event.find(params[:id])
    event.delete()
    events = Event.all.order('start_date ASC')        
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