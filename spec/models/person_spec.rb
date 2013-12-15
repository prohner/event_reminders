require 'spec_helper'

describe Person do
  before { @person = Person.new(first_name: "first", last_name: "last") }
  
  subject { @person }
  
  it { should respond_to(:first_name) }
  it { should respond_to(:last_name) }
  it { should respond_to(:full_name) }
  it { should respond_to(:events) }

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
  
end
