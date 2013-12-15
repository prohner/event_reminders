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
  
  
end
