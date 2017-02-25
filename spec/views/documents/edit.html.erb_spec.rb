require 'rails_helper'

RSpec.describe "documents/edit", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :title => "MyString",
      :file_name => "MyString",
      :document_type => "MyString",
      :user => nil,
      :active => false,
      :privacy_status => 1,
      :post => nil
    ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do

      assert_select "input#document_title[name=?]", "document[title]"

      assert_select "input#document_file_name[name=?]", "document[file_name]"

      assert_select "input#document_document_type[name=?]", "document[document_type]"

      assert_select "input#document_user_id[name=?]", "document[user_id]"

      assert_select "input#document_active[name=?]", "document[active]"

      assert_select "input#document_privacy_status[name=?]", "document[privacy_status]"

      assert_select "input#document_post_id[name=?]", "document[post_id]"
    end
  end
end
