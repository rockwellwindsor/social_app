require 'rails_helper'

RSpec.describe "SpaceSubscriptions", type: :request do
  describe "GET /space_subscriptions" do
    it "works! (now write some real specs)" do
      get space_subscriptions_path
      expect(response).to have_http_status(200)
    end
  end
end
