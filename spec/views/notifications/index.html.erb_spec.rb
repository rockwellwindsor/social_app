require 'rails_helper'

RSpec.describe "notifications/index", type: :view do
  before(:each) do
    assign(:notifications, [
      Notification.create!(
        :title => "Title",
        :user => nil,
        :active => false,
        :table_name => "Table Name",
        :table_id => 2,
        :link => "Link",
        :category => "Category"
      ),
      Notification.create!(
        :title => "Title",
        :user => nil,
        :active => false,
        :table_name => "Table Name",
        :table_id => 2,
        :link => "Link",
        :category => "Category"
      )
    ])
  end

  it "renders a list of notifications" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Table Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
