require 'rails_helper'

RSpec.describe "map_tiles/show", type: :view do
  before(:each) do
    @map_tile = assign(:map_tile, MapTile.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
