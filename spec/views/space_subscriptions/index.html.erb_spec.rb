require 'rails_helper'

RSpec.describe "space_subscriptions/index", type: :view do
  before(:each) do
    assign(:space_subscriptions, [
      SpaceSubscription.create!(
        :user => nil,
        :spaces => nil,
        :status => 2
      ),
      SpaceSubscription.create!(
        :user => nil,
        :spaces => nil,
        :status => 2
      )
    ])
  end

  it "renders a list of space_subscriptions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
