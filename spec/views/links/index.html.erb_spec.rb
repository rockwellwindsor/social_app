require 'rails_helper'

RSpec.describe "links/index", type: :view do
  before(:each) do
    assign(:links, [
      Link.create!(
        :title => "Title",
        :url => "Url",
        :user => nil,
        :active => false,
        :table_name => "Table Name",
        :table_id => 2,
        :description => "MyText",
        :thumbnail => "Thumbnail"
      ),
      Link.create!(
        :title => "Title",
        :url => "Url",
        :user => nil,
        :active => false,
        :table_name => "Table Name",
        :table_id => 2,
        :description => "MyText",
        :thumbnail => "Thumbnail"
      )
    ])
  end

  it "renders a list of links" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Table Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Thumbnail".to_s, :count => 2
  end
end
