require "spec_helper"

describe LostFoundsController do
  describe "routing" do

    it "routes to #index" do
      get("/lost_founds").should route_to("lost_founds#index")
    end

    it "routes to #new" do
      get("/lost_founds/new").should route_to("lost_founds#new")
    end

    it "routes to #show" do
      get("/lost_founds/1").should route_to("lost_founds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lost_founds/1/edit").should route_to("lost_founds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lost_founds").should route_to("lost_founds#create")
    end

    it "routes to #update" do
      put("/lost_founds/1").should route_to("lost_founds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lost_founds/1").should route_to("lost_founds#destroy", :id => "1")
    end

  end
end
