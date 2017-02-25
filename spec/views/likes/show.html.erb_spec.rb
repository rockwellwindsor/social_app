require 'rails_helper'

RSpec.describe "likes/show", type: :view do
  before(:each) do
    @like = assign(:like, Like.create!(
      :user => nil,
      :table_name => "Table Name",
      :table_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Table Name/)
    expect(rendered).to match(/2/)
  end
end
