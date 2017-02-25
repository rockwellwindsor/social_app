require 'rails_helper'

RSpec.describe "map_categories/new", type: :view do
  before(:each) do
    assign(:map_category, MapCategory.new(
      :title => "MyString",
      :color => "MyString",
      :icon => "MyString",
      :active => false
    ))
  end

  it "renders new map_category form" do
    render

    assert_select "form[action=?][method=?]", map_categories_path, "post" do

      assert_select "input#map_category_title[name=?]", "map_category[title]"

      assert_select "input#map_category_color[name=?]", "map_category[color]"

      assert_select "input#map_category_icon[name=?]", "map_category[icon]"

      assert_select "input#map_category_active[name=?]", "map_category[active]"
    end
  end
end
