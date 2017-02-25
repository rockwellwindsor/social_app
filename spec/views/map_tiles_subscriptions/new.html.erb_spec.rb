require 'rails_helper'

RSpec.describe "map_tiles_subscriptions/new", type: :view do
  before(:each) do
    assign(:map_tiles_subscription, MapTilesSubscription.new(
      :tile => nil,
      :map => nil,
      :user => nil,
      :completed => false,
      :active => false,
      :locked => false,
      :status => 1
    ))
  end

  it "renders new map_tiles_subscription form" do
    render

    assert_select "form[action=?][method=?]", map_tiles_subscriptions_path, "post" do

      assert_select "input#map_tiles_subscription_tile_id[name=?]", "map_tiles_subscription[tile_id]"

      assert_select "input#map_tiles_subscription_map_id[name=?]", "map_tiles_subscription[map_id]"

      assert_select "input#map_tiles_subscription_user_id[name=?]", "map_tiles_subscription[user_id]"

      assert_select "input#map_tiles_subscription_completed[name=?]", "map_tiles_subscription[completed]"

      assert_select "input#map_tiles_subscription_active[name=?]", "map_tiles_subscription[active]"

      assert_select "input#map_tiles_subscription_locked[name=?]", "map_tiles_subscription[locked]"

      assert_select "input#map_tiles_subscription_status[name=?]", "map_tiles_subscription[status]"
    end
  end
end
