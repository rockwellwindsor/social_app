require 'rails_helper'

RSpec.describe "mentions/index", type: :view do
  before(:each) do
    assign(:mentions, [
      Mention.create!(
        :user => nil,
        :mentioned_user_name => "Mentioned User Name",
        :title => "Title",
        :mentioned_user_id => 2,
        :table_name => "Table Name",
        :table_id => 3,
        :active => false
      ),
      Mention.create!(
        :user => nil,
        :mentioned_user_name => "Mentioned User Name",
        :title => "Title",
        :mentioned_user_id => 2,
        :table_name => "Table Name",
        :table_id => 3,
        :active => false
      )
    ])
  end

  it "renders a list of mentions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Mentioned User Name".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Table Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
