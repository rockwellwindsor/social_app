require "rails_helper"

RSpec.describe SocialLinksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/social_links").to route_to("social_links#index")
    end

    it "routes to #new" do
      expect(:get => "/social_links/new").to route_to("social_links#new")
    end

    it "routes to #show" do
      expect(:get => "/social_links/1").to route_to("social_links#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/social_links/1/edit").to route_to("social_links#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/social_links").to route_to("social_links#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/social_links/1").to route_to("social_links#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/social_links/1").to route_to("social_links#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/social_links/1").to route_to("social_links#destroy", :id => "1")
    end

  end
end
