require 'rails_helper'

RSpec.describe "participants/new", type: :view do
  before(:each) do
    assign(:participant, Participant.new(
      :discussion => nil,
      :user => nil,
      :window_state => 1,
      :active => false
    ))
  end

  it "renders new participant form" do
    render

    assert_select "form[action=?][method=?]", participants_path, "post" do

      assert_select "input#participant_discussion_id[name=?]", "participant[discussion_id]"

      assert_select "input#participant_user_id[name=?]", "participant[user_id]"

      assert_select "input#participant_window_state[name=?]", "participant[window_state]"

      assert_select "input#participant_active[name=?]", "participant[active]"
    end
  end
end
