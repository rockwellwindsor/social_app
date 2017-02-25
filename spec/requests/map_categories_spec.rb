require 'rails_helper'

RSpec.describe "MapCategories", type: :request do
  describe "GET /map_categories" do
    it "works! (now write some real specs)" do
      get map_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
