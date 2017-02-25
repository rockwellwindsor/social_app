require 'rails_helper'

RSpec.describe "icons/show", type: :view do
  before(:each) do
    @icon = assign(:icon, Icon.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
