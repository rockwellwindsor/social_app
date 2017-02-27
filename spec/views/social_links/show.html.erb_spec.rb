require 'rails_helper'

RSpec.describe "social_links/show", type: :view do
  before(:each) do
    @social_link = assign(:social_link, SocialLink.create!(
      :user => nil,
      :title => "Title",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
  end
end
