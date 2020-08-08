class QuestionsController < ApplicationController

  # before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :update]
  
  before_action :set_question, only: [:show, :edit, :destroy, :update]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    
    @comment = Comment.new
  end

  def destroy
  end

  private

  # def question_params
  #   params.require(:question).permit(:name, :hometown, :location, :year, :age)
  # end

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:user_id, :comment_text)
  end
end
