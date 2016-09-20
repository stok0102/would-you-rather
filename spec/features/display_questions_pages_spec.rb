require "rails_helper"

describe "the index process" do
  it "displays all questions" do
    question = FactoryGirl.create(:question)
    visit questions_path
    expect find_button(question.option_one).visible?
  end

  it "displays questions by category", js: true do
    question = FactoryGirl.create(:question)
    question2 = FactoryGirl.create(:question, category: 'bathroom humor')
    visit questions_path
    click_link(question2.category)
    expect(page).to have_no_content question.category
  end

  it "shows results for question votes", js: true do
    question = FactoryGirl.create(:question)
    visit questions_path
    click_button(question.option_one)
    expect(page).to have_content 'never use toilet paper again: 100% of votes'
  end

  it "shows results for voting for the second option", js: true do
    question = FactoryGirl.create(:question)
    visit questions_path
    click_button(question.option_two)
    expect(page).to have_content 'not have a butthole: 100% of votes'
  end
end
