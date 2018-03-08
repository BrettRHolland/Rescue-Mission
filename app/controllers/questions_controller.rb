class QuestionsController < ApplicationController

  def index
    @questions = Question.order(created_at: :desc)
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      flash[:notice] = "Question added successfully."
      redirect_to question_answers_path(@question)
    else
      flash[:alert] = @question.errors.full_messages.first
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Questions was successfully updated."
      redirect_to question_answers_path(@question)
    else
      flash[:alert] = @question.errors.full_messages.first
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = "Question was successfully deleted."
    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:title, :description)
  end
end
