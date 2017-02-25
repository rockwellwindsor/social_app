require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :discussion => nil,
      :user => nil,
      :body => "MyText",
      :selected => false,
      :pinned => false
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_discussion_id[name=?]", "message[discussion_id]"

      assert_select "input#message_user_id[name=?]", "message[user_id]"

      assert_select "textarea#message_body[name=?]", "message[body]"

      assert_select "input#message_selected[name=?]", "message[selected]"

      assert_select "input#message_pinned[name=?]", "message[pinned]"
    end
  end
end
