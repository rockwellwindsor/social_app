require 'rails_helper'

RSpec.describe "space_types/new", type: :view do
  before(:each) do
    assign(:space_type, SpaceType.new(
      :title => "MyString",
      :description => "MyText",
      :user => nil,
      :icon => "MyString"
    ))
  end

  it "renders new space_type form" do
    render

    assert_select "form[action=?][method=?]", space_types_path, "post" do

      assert_select "input#space_type_title[name=?]", "space_type[title]"

      assert_select "textarea#space_type_description[name=?]", "space_type[description]"

      assert_select "input#space_type_user_id[name=?]", "space_type[user_id]"

      assert_select "input#space_type_icon[name=?]", "space_type[icon]"
    end
  end
end
