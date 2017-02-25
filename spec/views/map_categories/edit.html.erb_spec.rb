require 'rails_helper'

RSpec.describe "map_categories/edit", type: :view do
  before(:each) do
    @map_category = assign(:map_category, MapCategory.create!(
      :title => "MyString",
      :color => "MyString",
      :icon => "MyString",
      :active => false
    ))
  end

  it "renders the edit map_category form" do
    render

    assert_select "form[action=?][method=?]", map_category_path(@map_category), "post" do

      assert_select "input#map_category_title[name=?]", "map_category[title]"

      assert_select "input#map_category_color[name=?]", "map_category[color]"

      assert_select "input#map_category_icon[name=?]", "map_category[icon]"

      assert_select "input#map_category_active[name=?]", "map_category[active]"
    end
  end
end
