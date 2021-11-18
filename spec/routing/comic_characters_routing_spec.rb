require "rails_helper"

RSpec.describe ComicCharactersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/comic_characters").to route_to("comic_characters#index")
    end

    it "routes to #new" do
      expect(:get => "/comic_characters/new").to route_to("comic_characters#new")
    end

    it "routes to #show" do
      expect(:get => "/comic_characters/1").to route_to("comic_characters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/comic_characters/1/edit").to route_to("comic_characters#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/comic_characters").to route_to("comic_characters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/comic_characters/1").to route_to("comic_characters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/comic_characters/1").to route_to("comic_characters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/comic_characters/1").to route_to("comic_characters#destroy", :id => "1")
    end
  end
end
