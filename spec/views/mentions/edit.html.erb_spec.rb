require 'rails_helper'

RSpec.describe "mentions/edit", type: :view do
  before(:each) do
    @mention = assign(:mention, Mention.create!(
      :user => nil,
      :mentioned_user_name => "MyString",
      :title => "MyString",
      :mentioned_user_id => 1,
      :table_name => "MyString",
      :table_id => 1,
      :active => false
    ))
  end

  it "renders the edit mention form" do
    render

    assert_select "form[action=?][method=?]", mention_path(@mention), "post" do

      assert_select "input#mention_user_id[name=?]", "mention[user_id]"

      assert_select "input#mention_mentioned_user_name[name=?]", "mention[mentioned_user_name]"

      assert_select "input#mention_title[name=?]", "mention[title]"

      assert_select "input#mention_mentioned_user_id[name=?]", "mention[mentioned_user_id]"

      assert_select "input#mention_table_name[name=?]", "mention[table_name]"

      assert_select "input#mention_table_id[name=?]", "mention[table_id]"

      assert_select "input#mention_active[name=?]", "mention[active]"
    end
  end
end
