require "rails_helper"

RSpec.describe MapCategoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/map_categories").to route_to("map_categories#index")
    end

    it "routes to #new" do
      expect(:get => "/map_categories/new").to route_to("map_categories#new")
    end

    it "routes to #show" do
      expect(:get => "/map_categories/1").to route_to("map_categories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/map_categories/1/edit").to route_to("map_categories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/map_categories").to route_to("map_categories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/map_categories/1").to route_to("map_categories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/map_categories/1").to route_to("map_categories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/map_categories/1").to route_to("map_categories#destroy", :id => "1")
    end

  end
end
