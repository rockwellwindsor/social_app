require "rails_helper"

RSpec.describe SpaceSubscriptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/space_subscriptions").to route_to("space_subscriptions#index")
    end

    it "routes to #new" do
      expect(:get => "/space_subscriptions/new").to route_to("space_subscriptions#new")
    end

    it "routes to #show" do
      expect(:get => "/space_subscriptions/1").to route_to("space_subscriptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/space_subscriptions/1/edit").to route_to("space_subscriptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/space_subscriptions").to route_to("space_subscriptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/space_subscriptions/1").to route_to("space_subscriptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/space_subscriptions/1").to route_to("space_subscriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/space_subscriptions/1").to route_to("space_subscriptions#destroy", :id => "1")
    end

  end
end
