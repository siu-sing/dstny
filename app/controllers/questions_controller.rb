class QuestionsController < ApplicationController

  # before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :update]
  
  before_action :set_question, only: [:show, :edit, :destroy, :update]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @question.options.build
  end

  def create
    @question = Question.new(question_params)
    @question['user_id'] = 1
    @question.save
  end

  def edit
  end

  def update
  end

  def show
    @comment = @question.comments
    @comment = Comment.new
  end

  def destroy
  end

  private

  def question_params
    params.require(:question).permit(:question_text, :description, :expiry_date, options_attributes:[:option_text])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:user_id, :comment_text)
  end
end
