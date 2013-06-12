require "spec_helper"

describe LearnsController do
  describe "routing" do

    it "routes to #index" do
      get("/learns").should route_to("learns#index")
    end

    it "routes to #new" do
      get("/learns/new").should route_to("learns#new")
    end

    it "routes to #show" do
      get("/learns/1").should route_to("learns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/learns/1/edit").should route_to("learns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/learns").should route_to("learns#create")
    end

    it "routes to #update" do
      put("/learns/1").should route_to("learns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/learns/1").should route_to("learns#destroy", :id => "1")
    end

  end
end
