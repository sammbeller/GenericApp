require 'spec_helper'

describe "lost_founds/show" do
  before(:each) do
    @lost_found = assign(:lost_found, stub_model(LostFound,
      :user_id => 1,
      :title => "Title",
      :descr => "MyText",
      :approved => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
