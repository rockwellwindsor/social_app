require 'rails_helper'

RSpec.describe "mentions/show", type: :view do
  before(:each) do
    @mention = assign(:mention, Mention.create!(
      :user => nil,
      :mentioned_user_name => "Mentioned User Name",
      :title => "Title",
      :mentioned_user_id => 2,
      :table_name => "Table Name",
      :table_id => 3,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Mentioned User Name/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Table Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
  end
end
