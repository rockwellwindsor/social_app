require 'rails_helper'

RSpec.describe "MapTilesSubscriptions", type: :request do
  describe "GET /map_tiles_subscriptions" do
    it "works! (now write some real specs)" do
      get map_tiles_subscriptions_path
      expect(response).to have_http_status(200)
    end
  end
end
