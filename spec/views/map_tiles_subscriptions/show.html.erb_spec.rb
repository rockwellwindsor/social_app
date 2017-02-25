require 'rails_helper'

RSpec.describe "map_tiles_subscriptions/show", type: :view do
  before(:each) do
    @map_tiles_subscription = assign(:map_tiles_subscription, MapTilesSubscription.create!(
      :tile => nil,
      :map => nil,
      :user => nil,
      :completed => false,
      :active => false,
      :locked => false,
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end
