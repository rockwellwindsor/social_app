require 'rails_helper'

RSpec.describe "social_links/new", type: :view do
  before(:each) do
    assign(:social_link, SocialLink.new(
      :user => nil,
      :title => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new social_link form" do
    render

    assert_select "form[action=?][method=?]", social_links_path, "post" do

      assert_select "input#social_link_user_id[name=?]", "social_link[user_id]"

      assert_select "input#social_link_title[name=?]", "social_link[title]"

      assert_select "input#social_link_url[name=?]", "social_link[url]"
    end
  end
end
