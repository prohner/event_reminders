require 'spec_helper'

describe "people/show" do
  before(:each) do
    @event_name = "an event"
    @person = assign(:person, stub_model(Person,
      :first_name => "First Name",
      :last_name => "Last Name",
      :notes => "Notes"
    ))
    
    @event = assign(:event, stub_model(Event, 
      :event_date => "1/1/2014",
      :description => @event_name
    ))
    @person.events << @event
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Notes/)
    
    response.body.should have_css("a", :text => "Add Event")
  end
  
  it "renders an events list for person" do
    render
    rendered.should match(/Events:/)
    rendered.should match(/Event/)
    rendered.should match(/Description/)
    rendered.should have_css("table th", text: "Event")
    rendered.should have_css("table td", text: @event_name)
  end
end
