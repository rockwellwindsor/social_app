require 'rails_helper'

RSpec.describe "map_tiles/new", type: :view do
  before(:each) do
    assign(:map_tile, MapTile.new(
      :title => "MyString",
      :description => "MyText",
      :icon => "MyString",
      :active => false,
      :map => nil,
      :parent_tile_id => 1,
      :shared => false,
      :locked => false,
      :color => "MyString",
      :map_category => nil,
      :user => nil
    ))
  end

  it "renders new map_tile form" do
    render

    assert_select "form[action=?][method=?]", map_tiles_path, "post" do

      assert_select "input#map_tile_title[name=?]", "map_tile[title]"

      assert_select "textarea#map_tile_description[name=?]", "map_tile[description]"

      assert_select "input#map_tile_icon[name=?]", "map_tile[icon]"

      assert_select "input#map_tile_active[name=?]", "map_tile[active]"

      assert_select "input#map_tile_map_id[name=?]", "map_tile[map_id]"

      assert_select "input#map_tile_parent_tile_id[name=?]", "map_tile[parent_tile_id]"

      assert_select "input#map_tile_shared[name=?]", "map_tile[shared]"

      assert_select "input#map_tile_locked[name=?]", "map_tile[locked]"

      assert_select "input#map_tile_color[name=?]", "map_tile[color]"

      assert_select "input#map_tile_map_category_id[name=?]", "map_tile[map_category_id]"

      assert_select "input#map_tile_user_id[name=?]", "map_tile[user_id]"
    end
  end
end
