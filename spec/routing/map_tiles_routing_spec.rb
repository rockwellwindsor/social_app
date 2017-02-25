require "rails_helper"

RSpec.describe MapTilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/map_tiles").to route_to("map_tiles#index")
    end

    it "routes to #new" do
      expect(:get => "/map_tiles/new").to route_to("map_tiles#new")
    end

    it "routes to #show" do
      expect(:get => "/map_tiles/1").to route_to("map_tiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/map_tiles/1/edit").to route_to("map_tiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/map_tiles").to route_to("map_tiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/map_tiles/1").to route_to("map_tiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/map_tiles/1").to route_to("map_tiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/map_tiles/1").to route_to("map_tiles#destroy", :id => "1")
    end

  end
end
