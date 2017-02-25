require 'rails_helper'

RSpec.describe "spaces/index", type: :view do
  before(:each) do
    assign(:spaces, [
      Space.create!(
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :space_type => "",
        :icon => "Icon",
        :isPublic => false,
        :isPrivate => false,
        :active => false
      ),
      Space.create!(
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :space_type => "",
        :icon => "Icon",
        :isPublic => false,
        :isPrivate => false,
        :active => false
      )
    ])
  end

  it "renders a list of spaces" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
