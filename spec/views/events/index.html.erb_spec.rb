require 'spec_helper'

describe "events/index" do
  before(:each) do
    assign(:events, [
      stub_model(Event,
        :description => "Description",
        :gift_ideas => "Gift Ideas"
      ),
      stub_model(Event,
        :description => "Description",
        :gift_ideas => "Gift Ideas"
      )
    ])
  end

  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Gift Ideas".to_s, :count => 2
  end
end
