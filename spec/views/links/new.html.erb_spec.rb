require 'rails_helper'

RSpec.describe "links/new", type: :view do
  before(:each) do
    assign(:link, Link.new(
      :title => "MyString",
      :url => "MyString",
      :user => nil,
      :active => false,
      :table_name => "MyString",
      :table_id => 1,
      :description => "MyText",
      :thumbnail => "MyString"
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input#link_title[name=?]", "link[title]"

      assert_select "input#link_url[name=?]", "link[url]"

      assert_select "input#link_user_id[name=?]", "link[user_id]"

      assert_select "input#link_active[name=?]", "link[active]"

      assert_select "input#link_table_name[name=?]", "link[table_name]"

      assert_select "input#link_table_id[name=?]", "link[table_id]"

      assert_select "textarea#link_description[name=?]", "link[description]"

      assert_select "input#link_thumbnail[name=?]", "link[thumbnail]"
    end
  end
end
