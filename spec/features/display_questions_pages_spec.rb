require "rails_helper"

describe "the index process" do
  it "displays all questions" do
    question = FactoryGirl.create(:question)
    visit questions_path
    expect find_button(question.option_one).visible?
  end

  it "shows results for question votes", js: true do
    question = FactoryGirl.create(:question)
    visit questions_path
    click_button(question.option_one)
    expect(page).to have_content 'toilet'
  end

  it "shows results for voting for the second option", js: true do
    question = FactoryGirl.create(:question)
    visit questions_path
    click_button(question.option_two)
    expect(page).to have_content 'butthole'
  end
end
