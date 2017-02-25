require 'rails_helper'

RSpec.describe "space_subscriptions/new", type: :view do
  before(:each) do
    assign(:space_subscription, SpaceSubscription.new(
      :user => nil,
      :spaces => nil,
      :status => 1
    ))
  end

  it "renders new space_subscription form" do
    render

    assert_select "form[action=?][method=?]", space_subscriptions_path, "post" do

      assert_select "input#space_subscription_user_id[name=?]", "space_subscription[user_id]"

      assert_select "input#space_subscription_spaces_id[name=?]", "space_subscription[spaces_id]"

      assert_select "input#space_subscription_status[name=?]", "space_subscription[status]"
    end
  end
end
