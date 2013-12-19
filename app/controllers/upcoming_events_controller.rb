class UpcomingEventsController < ApplicationController
  def upcoming_events
    @events = Event.all().sort_by(&:next_occurrence_of_event)
  end
end
