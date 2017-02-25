require 'rails_helper'

RSpec.describe "SpaceTypes", type: :request do
  describe "GET /space_types" do
    it "works! (now write some real specs)" do
      get space_types_path
      expect(response).to have_http_status(200)
    end
  end
end
