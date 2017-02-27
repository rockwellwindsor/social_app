require 'rails_helper'

RSpec.describe "social_links/index", type: :view do
  before(:each) do
    assign(:social_links, [
      SocialLink.create!(
        :user => nil,
        :title => "Title",
        :url => "Url"
      ),
      SocialLink.create!(
        :user => nil,
        :title => "Title",
        :url => "Url"
      )
    ])
  end

  it "renders a list of social_links" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
