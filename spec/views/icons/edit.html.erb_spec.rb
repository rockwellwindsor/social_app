require 'rails_helper'

RSpec.describe "icons/edit", type: :view do
  before(:each) do
    @icon = assign(:icon, Icon.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit icon form" do
    render

    assert_select "form[action=?][method=?]", icon_path(@icon), "post" do

      assert_select "input#icon_title[name=?]", "icon[title]"
    end
  end
end
