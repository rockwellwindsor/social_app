require 'rails_helper'

RSpec.describe "maps/new", type: :view do
  before(:each) do
    assign(:map, Map.new(
      :user => nil,
      :title => "MyString",
      :active => false
    ))
  end

  it "renders new map form" do
    render

    assert_select "form[action=?][method=?]", maps_path, "post" do

      assert_select "input#map_user_id[name=?]", "map[user_id]"

      assert_select "input#map_title[name=?]", "map[title]"

      assert_select "input#map_active[name=?]", "map[active]"
    end
  end
end
