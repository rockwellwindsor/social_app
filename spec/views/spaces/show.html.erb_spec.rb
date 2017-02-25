require 'rails_helper'

RSpec.describe "spaces/show", type: :view do
  before(:each) do
    @space = assign(:space, Space.create!(
      :user => nil,
      :title => "Title",
      :description => "MyText",
      :space_type => "",
      :icon => "Icon",
      :isPublic => false,
      :isPrivate => false,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
