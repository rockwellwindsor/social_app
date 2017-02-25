require 'rails_helper'

RSpec.describe "space_subscriptions/show", type: :view do
  before(:each) do
    @space_subscription = assign(:space_subscription, SpaceSubscription.create!(
      :user => nil,
      :spaces => nil,
      :status => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
