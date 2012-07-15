require 'spec_helper'

describe "lost_founds/index" do
  before(:each) do
    assign(:lost_founds, [
      stub_model(LostFound,
        :user_id => 1,
        :title => "Title",
        :descr => "MyText",
        :approved => false
      ),
      stub_model(LostFound,
        :user_id => 1,
        :title => "Title",
        :descr => "MyText",
        :approved => false
      )
    ])
  end

  it "renders a list of lost_founds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
