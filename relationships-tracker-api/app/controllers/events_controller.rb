class EventsController < ApplicationController
    def index
        events = Event.all.order('created_at DESC')
        render :json => events
    end

    def show
        event = Event.find(params[:id])
        render :json => event
    end

    def new 
        event = Event.new
        render :json => event
    end

    def create
        event = Event.new(event_params)
        event.save
        render :json => event
    end

    def edit 
        event = Event.find(params[:id])
        render :json => event
    end

    def update
        event = Event.find(params[:id])
        event.update(event_params)
        events = Event.all.order('created_at DESC')        
        render :json => events
    end

    def destroy
        event = Event.find(params[:id])
        event.delete()
        events = Event.all.order('created_at DESC')        
        render :json => events       
    end

    private 
    def event_params
        params.require(:event).permit(
            :name, 
            :start_date, 
            :end_date, 
            :start_time, 
            :end_time, 
            :location, 
            :description,
            :user_id
        )
    end
end