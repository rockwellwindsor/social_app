require 'rails_helper'

RSpec.describe "space_types/show", type: :view do
  before(:each) do
    @space_type = assign(:space_type, SpaceType.create!(
      :title => "Title",
      :description => "MyText",
      :user => nil,
      :icon => "Icon"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Icon/)
  end
end
