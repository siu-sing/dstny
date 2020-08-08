class OptionsController < ApplicationController
  before_action :new_option, only: [:new, :create]
  # before_action :set_option, only: [:show, :edit, :update]
  def index
  end

  def show
  end

  def new
    @option = @question.options.build

    @option = Option.new
    @question = Question.find(params[:question_id])
  end

  def create
    @option = @question.options.build(option_params)

    if @option.save 
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def new_option
    @question = Question.find(params[:question_id])
  end
  
  def option_params
    params.require(:option).permit(:option_text, :question_id)
  end
end
