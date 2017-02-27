require 'rails_helper'

RSpec.describe "settings/new", type: :view do
  before(:each) do
    assign(:setting, Setting.new(
      :title => "MyString",
      :value => "MyString"
    ))
  end

  it "renders new setting form" do
    render

    assert_select "form[action=?][method=?]", settings_path, "post" do

      assert_select "input#setting_title[name=?]", "setting[title]"

      assert_select "input#setting_value[name=?]", "setting[value]"
    end
  end
end
