require 'rails_helper'

RSpec.describe "likes/new", type: :view do
  before(:each) do
    assign(:like, Like.new(
      :user => nil,
      :table_name => "MyString",
      :table_id => 1
    ))
  end

  it "renders new like form" do
    render

    assert_select "form[action=?][method=?]", likes_path, "post" do

      assert_select "input#like_user_id[name=?]", "like[user_id]"

      assert_select "input#like_table_name[name=?]", "like[table_name]"

      assert_select "input#like_table_id[name=?]", "like[table_id]"
    end
  end
end
