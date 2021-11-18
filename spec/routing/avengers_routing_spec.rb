require "rails_helper"

RSpec.describe AvengersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/avengers").to route_to("avengers#index")
    end

    it "routes to #new" do
      expect(:get => "/avengers/new").to route_to("avengers#new")
    end

    it "routes to #show" do
      expect(:get => "/avengers/1").to route_to("avengers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/avengers/1/edit").to route_to("avengers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/avengers").to route_to("avengers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/avengers/1").to route_to("avengers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/avengers/1").to route_to("avengers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/avengers/1").to route_to("avengers#destroy", :id => "1")
    end
  end
end
