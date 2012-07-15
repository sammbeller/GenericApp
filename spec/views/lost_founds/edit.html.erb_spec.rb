require 'spec_helper'

describe "lost_founds/edit" do
  before(:each) do
    @lost_found = assign(:lost_found, stub_model(LostFound,
      :user_id => 1,
      :title => "MyString",
      :descr => "MyText",
      :approved => false
    ))
  end

  it "renders the edit lost_found form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lost_founds_path(@lost_found), :method => "post" do
      assert_select "input#lost_found_user_id", :name => "lost_found[user_id]"
      assert_select "input#lost_found_title", :name => "lost_found[title]"
      assert_select "textarea#lost_found_descr", :name => "lost_found[descr]"
      assert_select "input#lost_found_approved", :name => "lost_found[approved]"
    end
  end
end
