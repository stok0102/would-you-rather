class QuestionsController < ApplicationController
  helper ApplicationHelper

  def index
    @questions = Question.order(id: 'ASC')
  end

  def update
    @question = Question.find(params[:id])
    if params[:choice] == "option_one"
      new_votes = @question.option_one_votes += 1
      @question.update(option_one_votes: new_votes)
    elsif params[:choice] == "option_two"
      new_votes = @question.option_two_votes += 1
      @question.update(option_two_votes: new_votes)
    end
    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end

end
