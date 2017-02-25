require 'rails_helper'

RSpec.describe "documents/show", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :title => "Title",
      :file_name => "File Name",
      :document_type => "Document Type",
      :user => nil,
      :active => false,
      :privacy_status => 2,
      :post => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/File Name/)
    expect(rendered).to match(/Document Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
