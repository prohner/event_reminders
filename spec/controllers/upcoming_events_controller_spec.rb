require 'spec_helper'

describe UpcomingEventsController do

  describe "GET 'upcoming_events'" do
    before(:each) do
      get 'upcoming_events'
    end
    
    it "returns http success" do
      response.should be_success
    end
    
    it "should assign a set of events" do
      expect(assigns(:events)).should_not be_nil
    end
    
    it "should return items in correct order" do
      e1 = Event.create!(:description => "birthday", :event_date => "1968-03-27", :gift_ideas => "")
      e2 = Event.create!(:description => "birthday", :event_date => "1967-03-28", :gift_ideas => "")
      e3 = Event.create!(:description => "birthday", :event_date => "2003-03-26", :gift_ideas => "")
      get 'upcoming_events'
      expect(assigns(:events)).to match_array([e3, e1, e2])
    end
  end

end
