require 'rails_helper'

RSpec.describe "notifications/show", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :title => "Title",
      :user => nil,
      :active => false,
      :table_name => "Table Name",
      :table_id => 2,
      :link => "Link",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Table Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Category/)
  end
end
