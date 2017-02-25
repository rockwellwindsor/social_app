require 'rails_helper'

RSpec.describe "participants/index", type: :view do
  before(:each) do
    assign(:participants, [
      Participant.create!(
        :discussion => nil,
        :user => nil,
        :window_state => 2,
        :active => false
      ),
      Participant.create!(
        :discussion => nil,
        :user => nil,
        :window_state => 2,
        :active => false
      )
    ])
  end

  it "renders a list of participants" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
