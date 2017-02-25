require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :space => nil,
        :user => nil,
        :favorited_count => 2,
        :content => "MyText",
        :likes_count => 3
      ),
      Post.create!(
        :space => nil,
        :user => nil,
        :favorited_count => 2,
        :content => "MyText",
        :likes_count => 3
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
