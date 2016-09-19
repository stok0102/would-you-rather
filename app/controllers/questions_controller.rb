class QuestionsController < ApplicationController
  def index
    @questions = Question.order(id: 'ASC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :create
    end
  end

  def edit
    @question = Question.find(params[:id])
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
    redirect_to questions_path
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

end
