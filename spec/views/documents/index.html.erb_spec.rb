require 'rails_helper'

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :title => "Title",
        :file_name => "File Name",
        :document_type => "Document Type",
        :user => nil,
        :active => false,
        :privacy_status => 2,
        :post => nil
      ),
      Document.create!(
        :title => "Title",
        :file_name => "File Name",
        :document_type => "Document Type",
        :user => nil,
        :active => false,
        :privacy_status => 2,
        :post => nil
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Document Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
