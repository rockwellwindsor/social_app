require 'rails_helper'

RSpec.describe "likes/index", type: :view do
  before(:each) do
    assign(:likes, [
      Like.create!(
        :user => nil,
        :table_name => "Table Name",
        :table_id => 2
      ),
      Like.create!(
        :user => nil,
        :table_name => "Table Name",
        :table_id => 2
      )
    ])
  end

  it "renders a list of likes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Table Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
