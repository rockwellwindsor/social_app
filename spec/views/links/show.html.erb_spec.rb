require 'rails_helper'

RSpec.describe "links/show", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :title => "Title",
      :url => "Url",
      :user => nil,
      :active => false,
      :table_name => "Table Name",
      :table_id => 2,
      :description => "MyText",
      :thumbnail => "Thumbnail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Table Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Thumbnail/)
  end
end
