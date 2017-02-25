require 'rails_helper'

RSpec.describe "space_types/index", type: :view do
  before(:each) do
    assign(:space_types, [
      SpaceType.create!(
        :title => "Title",
        :description => "MyText",
        :user => nil,
        :icon => "Icon"
      ),
      SpaceType.create!(
        :title => "Title",
        :description => "MyText",
        :user => nil,
        :icon => "Icon"
      )
    ])
  end

  it "renders a list of space_types" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
  end
end
