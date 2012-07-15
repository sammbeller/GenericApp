require 'spec_helper'

describe "lost_founds/new" do
  before(:each) do
    assign(:lost_found, stub_model(LostFound,
      :user_id => 1,
      :title => "MyString",
      :descr => "MyText",
      :approved => false
    ).as_new_record)
  end

  it "renders new lost_found form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => lost_founds_path, :method => "post" do
      assert_select "input#lost_found_user_id", :name => "lost_found[user_id]"
      assert_select "input#lost_found_title", :name => "lost_found[title]"
      assert_select "textarea#lost_found_descr", :name => "lost_found[descr]"
      assert_select "input#lost_found_approved", :name => "lost_found[approved]"
    end
  end
end
