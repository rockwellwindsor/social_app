require 'rails_helper'

RSpec.describe "map_categories/show", type: :view do
  before(:each) do
    @map_category = assign(:map_category, MapCategory.create!(
      :title => "Title",
      :color => "Color",
      :icon => "Icon",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/false/)
  end
end
