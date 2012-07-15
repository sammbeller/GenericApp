require 'spec_helper'

describe "LostFounds" do
  describe "GET /lost_founds" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get lost_founds_path
      response.status.should be(200)
    end
  end
end
