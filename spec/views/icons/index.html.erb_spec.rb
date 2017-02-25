require 'rails_helper'

RSpec.describe "icons/index", type: :view do
  before(:each) do
    assign(:icons, [
      Icon.create!(
        :title => "Title"
      ),
      Icon.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of icons" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
