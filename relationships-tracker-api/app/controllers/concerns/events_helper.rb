module EventsHelper
  def sortEvents(events)
    future_events = []
    past_events = []
    events.each do |event|
      # check if event has already ended
      if event.end_date.past?
        # sort into past or future
        past_events << event
      else
        future_events << event
      end
    end
    
    return {future_events: future_events, past_events: past_events}
    
  end

end