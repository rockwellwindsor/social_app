require 'rails_helper'

RSpec.describe "settings/index", type: :view do
  before(:each) do
    assign(:settings, [
      Setting.create!(
        :title => "Title",
        :value => "Value"
      ),
      Setting.create!(
        :title => "Title",
        :value => "Value"
      )
    ])
  end

  it "renders a list of settings" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Value".to_s, :count => 2
  end
end
