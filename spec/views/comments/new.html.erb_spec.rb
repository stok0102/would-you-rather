require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :content => "MyString",
      :question => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_content[name=?]", "comment[content]"

      assert_select "input#comment_question_id[name=?]", "comment[question_id]"
    end
  end
end
