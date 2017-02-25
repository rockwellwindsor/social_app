require 'rails_helper'

RSpec.describe "messages/edit", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
      :discussion => nil,
      :user => nil,
      :body => "MyText",
      :selected => false,
      :pinned => false
    ))
  end

  it "renders the edit message form" do
    render

    assert_select "form[action=?][method=?]", message_path(@message), "post" do

      assert_select "input#message_discussion_id[name=?]", "message[discussion_id]"

      assert_select "input#message_user_id[name=?]", "message[user_id]"

      assert_select "textarea#message_body[name=?]", "message[body]"

      assert_select "input#message_selected[name=?]", "message[selected]"

      assert_select "input#message_pinned[name=?]", "message[pinned]"
    end
  end
end
