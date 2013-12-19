require 'spec_helper'

describe "upcoming_events/upcoming_events.html.erb" do
  # before(:each) do
  #   @event_name = "an event"
  #   @person = assign(:person, stub_model(Person,
  #     :first_name => "First Name",
  #     :last_name => "Last Name",
  #     :notes => "Notes"
  #   ))
  #   
  #   @event = assign(:event, stub_model(Event, 
  #     :event_date => "1/1/2014",
  #     :description => @event_name
  #   ))
  #   @person.events << @event
  # end

  it "renders event attributes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Contact/)
    rendered.should match(/Occasion/)
    rendered.should match(/Date/)
    
  end
end
