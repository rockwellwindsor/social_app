require 'rails_helper'

RSpec.describe "likes/edit", type: :view do
  before(:each) do
    @like = assign(:like, Like.create!(
      :user => nil,
      :table_name => "MyString",
      :table_id => 1
    ))
  end

  it "renders the edit like form" do
    render

    assert_select "form[action=?][method=?]", like_path(@like), "post" do

      assert_select "input#like_user_id[name=?]", "like[user_id]"

      assert_select "input#like_table_name[name=?]", "like[table_name]"

      assert_select "input#like_table_id[name=?]", "like[table_id]"
    end
  end
end
