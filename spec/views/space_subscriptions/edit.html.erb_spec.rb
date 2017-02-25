require 'rails_helper'

RSpec.describe "space_subscriptions/edit", type: :view do
  before(:each) do
    @space_subscription = assign(:space_subscription, SpaceSubscription.create!(
      :user => nil,
      :spaces => nil,
      :status => 1
    ))
  end

  it "renders the edit space_subscription form" do
    render

    assert_select "form[action=?][method=?]", space_subscription_path(@space_subscription), "post" do

      assert_select "input#space_subscription_user_id[name=?]", "space_subscription[user_id]"

      assert_select "input#space_subscription_spaces_id[name=?]", "space_subscription[spaces_id]"

      assert_select "input#space_subscription_status[name=?]", "space_subscription[status]"
    end
  end
end
