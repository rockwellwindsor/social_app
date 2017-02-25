require 'rails_helper'

RSpec.describe "maps/show", type: :view do
  before(:each) do
    @map = assign(:map, Map.create!(
      :user => nil,
      :title => "Title",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/false/)
  end
end
