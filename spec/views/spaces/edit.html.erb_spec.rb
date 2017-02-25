require 'rails_helper'

RSpec.describe "spaces/edit", type: :view do
  before(:each) do
    @space = assign(:space, Space.create!(
      :user => nil,
      :title => "MyString",
      :description => "MyText",
      :space_type => "",
      :icon => "MyString",
      :isPublic => false,
      :isPrivate => false,
      :active => false
    ))
  end

  it "renders the edit space form" do
    render

    assert_select "form[action=?][method=?]", space_path(@space), "post" do

      assert_select "input#space_user_id[name=?]", "space[user_id]"

      assert_select "input#space_title[name=?]", "space[title]"

      assert_select "textarea#space_description[name=?]", "space[description]"

      assert_select "input#space_space_type[name=?]", "space[space_type]"

      assert_select "input#space_icon[name=?]", "space[icon]"

      assert_select "input#space_isPublic[name=?]", "space[isPublic]"

      assert_select "input#space_isPrivate[name=?]", "space[isPrivate]"

      assert_select "input#space_active[name=?]", "space[active]"
    end
  end
end
