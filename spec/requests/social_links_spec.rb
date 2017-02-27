require 'rails_helper'

RSpec.describe "SocialLinks", type: :request do
  describe "GET /social_links" do
    it "works! (now write some real specs)" do
      get social_links_path
      expect(response).to have_http_status(200)
    end
  end
end
