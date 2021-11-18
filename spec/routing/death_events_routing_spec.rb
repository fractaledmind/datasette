require "rails_helper"

RSpec.describe DeathEventsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/death_events").to route_to("death_events#index")
    end

    it "routes to #new" do
      expect(:get => "/death_events/new").to route_to("death_events#new")
    end

    it "routes to #show" do
      expect(:get => "/death_events/1").to route_to("death_events#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/death_events/1/edit").to route_to("death_events#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/death_events").to route_to("death_events#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/death_events/1").to route_to("death_events#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/death_events/1").to route_to("death_events#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/death_events/1").to route_to("death_events#destroy", :id => "1")
    end
  end
end
