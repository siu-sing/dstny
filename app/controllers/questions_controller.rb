class QuestionsController < ApplicationController

  # before_action :authenticate_user!, only: [:new, :create, :edit, :destroy, :update]

  before_action :set_question, only: [:show, :edit, :destroy, :update]

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    @question.options.build
    puts current_user
    puts current_user.id
  end

  def create
    @question = Question.new(question_params)
    @question["user_id"] = current_user.id
    @question.save
  end

  def edit
  end

  def show
    
    @comment = Comment.new
    @question = Question.find(params[:id])
    @options = @question.options
  end

  def destroy
    @question.destroy
    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:question_text, :description, :user_id, :comment_text, :expiry_date, question_images: [], options_attributes: [:option_text])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  #INCORPORATED ABOVE INTO QUES_PARAMS
  # def question_params
  #   params.require(:question).permit(:user_id, :comment_text)
  # end
end
