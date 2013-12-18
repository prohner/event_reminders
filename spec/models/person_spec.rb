require 'spec_helper'

describe Person do
  before { @person = Person.new(first_name: "first", last_name: "last") }
  
  subject { @person }
  
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:full_name) }
  it { should respond_to(:events) }
  it { should respond_to(:events_as_string) }

  describe "#full_name" do
    before do
      @person_first_padded = Person.new(first_name: " first  ", last_name: "last") 
      @person_last_padded = Person.new(first_name: "first", last_name: "   last ") 
    end
    
    it "should remove first name leading/trailing white space" do
       @person_first_padded.full_name.should eq("first last")
    end
  
    it "should remove last name leading/trailing white space" do
      @person_last_padded.full_name.should eq("first last")
    end
  end
  
  describe "#events_as_string" do
    it "should list events as an alphabetized string string with slashes" do
      @event1 = Event.new(event_date: "1/1/2013", description: "birthday", gift_ideas: "cool stuff")
      @event2 = Event.new(event_date: "1/1/2013", description: "graduation", gift_ideas: "cool stuff")
      @event3 = Event.new(event_date: "1/1/2013", description: "anniversary", gift_ideas: "cool stuff")
      @person.events << @event1
      @person.events << @event2
      @person.events << @event3
      
      @person.events_as_string.should eq("anniversary / birthday / graduation")
    end
  end
  
end
