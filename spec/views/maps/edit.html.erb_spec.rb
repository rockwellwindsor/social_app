require 'rails_helper'

RSpec.describe "maps/edit", type: :view do
  before(:each) do
    @map = assign(:map, Map.create!(
      :user => nil,
      :title => "MyString",
      :active => false
    ))
  end

  it "renders the edit map form" do
    render

    assert_select "form[action=?][method=?]", map_path(@map), "post" do

      assert_select "input#map_user_id[name=?]", "map[user_id]"

      assert_select "input#map_title[name=?]", "map[title]"

      assert_select "input#map_active[name=?]", "map[active]"
    end
  end
end
