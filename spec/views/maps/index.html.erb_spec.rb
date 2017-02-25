require 'rails_helper'

RSpec.describe "maps/index", type: :view do
  before(:each) do
    assign(:maps, [
      Map.create!(
        :user => nil,
        :title => "Title",
        :active => false
      ),
      Map.create!(
        :user => nil,
        :title => "Title",
        :active => false
      )
    ])
  end

  it "renders a list of maps" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
