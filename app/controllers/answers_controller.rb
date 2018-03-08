class AnswersController < ApplicationController

  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers.order(best: :desc, created_at: :desc)
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      flash[:notice] = "Answer added successfully."
      redirect_to question_answers_path(@question)
    else
      flash[:alert] = @answer.errors.full_messages.join("<br/>").html_safe
      redirect_to question_answers_path(@question)
    end
  end

  def update
    @question = Question.find(params[:question_id])
    @current_best = @question.answers.find_by(best: TRUE)
    @new_best = Answer.find(params[:id])
    if @current_best != nil
      @current_best.update(best: FALSE)
    end
    @new_best.update(best: TRUE)

    flash[:notice] = "Best answer was updated."
    redirect_to question_answers_path(@question)
  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end

end
