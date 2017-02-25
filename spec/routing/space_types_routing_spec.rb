require "rails_helper"

RSpec.describe SpaceTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/space_types").to route_to("space_types#index")
    end

    it "routes to #new" do
      expect(:get => "/space_types/new").to route_to("space_types#new")
    end

    it "routes to #show" do
      expect(:get => "/space_types/1").to route_to("space_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/space_types/1/edit").to route_to("space_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/space_types").to route_to("space_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/space_types/1").to route_to("space_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/space_types/1").to route_to("space_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/space_types/1").to route_to("space_types#destroy", :id => "1")
    end

  end
end
