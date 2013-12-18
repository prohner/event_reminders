require 'spec_helper'

describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :description => "MyString",
      :gift_ideas => "MyString"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
      assert_select "input#event_description[name=?]", "event[description]"
      assert_select "input#event_gift_ideas[name=?]", "event[gift_ideas]"
    end
  end
end