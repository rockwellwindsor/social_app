require 'rails_helper'

RSpec.describe "map_tiles/index", type: :view do
  before(:each) do
    assign(:map_tiles, [
      MapTile.create!(
        :title => "Title",
        :description => "MyText",
        :icon => "Icon",
        :active => false,
        :map => nil,
        :parent_tile_id => 2,
        :shared => false,
        :locked => false,
        :color => "Color",
        :map_category => nil,
        :user => nil
      ),
      MapTile.create!(
        :title => "Title",
        :description => "MyText",
        :icon => "Icon",
        :active => false,
        :map => nil,
        :parent_tile_id => 2,
        :shared => false,
        :locked => false,
        :color => "Color",
        :map_category => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of map_tiles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
