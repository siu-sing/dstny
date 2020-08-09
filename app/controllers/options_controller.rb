class OptionsController < ApplicationController
  before_action :new_option, only: [:new, :create]
  # before_action :set_option, only: [:show, :edit, :update]
  def index
    @question = Question.find(params[:question_id])
    @options = @question.options
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def addvote
    puts " - -  - - - - - here "
    puts params[:option_id]
    puts " - -  - - - - - here "
    @option = Option.find(params[:option_id])
    @option.votes += 1
    @option.voters << current_user.id

    if @option.save
      redirect_to question_path(@option.question.id)
    end
  end

  def destroy
  end

  private

  def new_option
    @question = Question.find(params[:question_id])
  end

  def option_params
    params.require(:option).permit(:option_id, :vote, :question_id)
  end
end
