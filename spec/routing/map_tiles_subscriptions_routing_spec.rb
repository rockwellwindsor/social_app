require "rails_helper"

RSpec.describe MapTilesSubscriptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/map_tiles_subscriptions").to route_to("map_tiles_subscriptions#index")
    end

    it "routes to #new" do
      expect(:get => "/map_tiles_subscriptions/new").to route_to("map_tiles_subscriptions#new")
    end

    it "routes to #show" do
      expect(:get => "/map_tiles_subscriptions/1").to route_to("map_tiles_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/map_tiles_subscriptions/1/edit").to route_to("map_tiles_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/map_tiles_subscriptions").to route_to("map_tiles_subscriptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/map_tiles_subscriptions/1").to route_to("map_tiles_subscriptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/map_tiles_subscriptions/1").to route_to("map_tiles_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/map_tiles_subscriptions/1").to route_to("map_tiles_subscriptions#destroy", :id => "1")
    end

  end
end
