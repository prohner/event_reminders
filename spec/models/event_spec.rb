require 'spec_helper'

describe Event do
  before do 
    @person = Person.new(first_name: "first", last_name: "last") 
    @event = Event.new(event_date: "1/1/2013", description: "birthday", gift_ideas: "cool stuff")
  end
  
  subject { @event }
  
  it { should respond_to(:event_date) }
  it { should respond_to(:description) }
  it { should respond_to(:gift_ideas) }
  it { should respond_to(:person) }
  it { should respond_to(:next_occurrence_of_event) }
  it { should respond_to(:years_at_next_occurrence_of_event) }
  
  describe "next occurrence of event" do
    event = Event.new(event_date: "1/1/2013")
    date = event.next_occurrence_of_event
    date.should > event.event_date
  end

  describe "years at next occurrence of event" do
    test_year = 2013
    this_year = Time.now.year
    event = Event.new(event_date: "1/1/#{test_year}")
    next_number_of_years = event.years_at_next_occurrence_of_event
    expected_number_of_years = this_year - test_year + 1
    expected_number_of_years.should == next_number_of_years 
    
  end
end
