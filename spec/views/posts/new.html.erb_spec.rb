require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :space => nil,
      :user => nil,
      :favorited_count => 1,
      :content => "MyText",
      :likes_count => 1
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input#post_space_id[name=?]", "post[space_id]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"

      assert_select "input#post_favorited_count[name=?]", "post[favorited_count]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_likes_count[name=?]", "post[likes_count]"
    end
  end
end
