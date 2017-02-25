require 'rails_helper'

RSpec.describe "space_types/edit", type: :view do
  before(:each) do
    @space_type = assign(:space_type, SpaceType.create!(
      :title => "MyString",
      :description => "MyText",
      :user => nil,
      :icon => "MyString"
    ))
  end

  it "renders the edit space_type form" do
    render

    assert_select "form[action=?][method=?]", space_type_path(@space_type), "post" do

      assert_select "input#space_type_title[name=?]", "space_type[title]"

      assert_select "textarea#space_type_description[name=?]", "space_type[description]"

      assert_select "input#space_type_user_id[name=?]", "space_type[user_id]"

      assert_select "input#space_type_icon[name=?]", "space_type[icon]"
    end
  end
end
