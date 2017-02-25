require 'rails_helper'

RSpec.describe "map_tiles_subscriptions/index", type: :view do
  before(:each) do
    assign(:map_tiles_subscriptions, [
      MapTilesSubscription.create!(
        :tile => nil,
        :map => nil,
        :user => nil,
        :completed => false,
        :active => false,
        :locked => false,
        :status => 2
      ),
      MapTilesSubscription.create!(
        :tile => nil,
        :map => nil,
        :user => nil,
        :completed => false,
        :active => false,
        :locked => false,
        :status => 2
      )
    ])
  end

  it "renders a list of map_tiles_subscriptions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
