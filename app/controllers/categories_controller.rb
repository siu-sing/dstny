class CategoriesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @question = Question.find(params[:question_id])
    @category['question_id'] = @question.id
    
    if @category.save
        flash[:notice] = "category created!"
        redirect_to question_path(@question.id)
      else 
        flash[:alert] = "category NOT created!"
        redirect_to question_path(@question.id)
      end
  end

  def edit
  end

  def update
  end

  def show
    @category = Category.find(params[:id])
    @questions = @category.questions
  end

  def destroy
  end
end
