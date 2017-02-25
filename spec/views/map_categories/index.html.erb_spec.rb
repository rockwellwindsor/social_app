require 'rails_helper'

RSpec.describe "map_categories/index", type: :view do
  before(:each) do
    assign(:map_categories, [
      MapCategory.create!(
        :title => "Title",
        :color => "Color",
        :icon => "Icon",
        :active => false
      ),
      MapCategory.create!(
        :title => "Title",
        :color => "Color",
        :icon => "Icon",
        :active => false
      )
    ])
  end

  it "renders a list of map_categories" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
