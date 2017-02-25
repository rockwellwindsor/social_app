require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :user => nil,
        :post => nil,
        :content => "MyText",
        :likes_count => 2
      ),
      Comment.create!(
        :user => nil,
        :post => nil,
        :content => "MyText",
        :likes_count => 2
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
