require "spec_helper"

describe DiariesController do
  describe "routing" do

    it "routes to #index" do
      get("/diaries").should route_to("diaries#index")
    end

    it "routes to #new" do
      get("/diaries/new").should route_to("diaries#new")
    end

    it "routes to #show" do
      get("/diaries/1").should route_to("diaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diaries/1/edit").should route_to("diaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diaries").should route_to("diaries#create")
    end

    it "routes to #update" do
      put("/diaries/1").should route_to("diaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diaries/1").should route_to("diaries#destroy", :id => "1")
    end

  end
end
