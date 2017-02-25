require 'rails_helper'

RSpec.describe "notifications/new", type: :view do
  before(:each) do
    assign(:notification, Notification.new(
      :title => "MyString",
      :user => nil,
      :active => false,
      :table_name => "MyString",
      :table_id => 1,
      :link => "MyString",
      :category => "MyString"
    ))
  end

  it "renders new notification form" do
    render

    assert_select "form[action=?][method=?]", notifications_path, "post" do

      assert_select "input#notification_title[name=?]", "notification[title]"

      assert_select "input#notification_user_id[name=?]", "notification[user_id]"

      assert_select "input#notification_active[name=?]", "notification[active]"

      assert_select "input#notification_table_name[name=?]", "notification[table_name]"

      assert_select "input#notification_table_id[name=?]", "notification[table_id]"

      assert_select "input#notification_link[name=?]", "notification[link]"

      assert_select "input#notification_category[name=?]", "notification[category]"
    end
  end
end
