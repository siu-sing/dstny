class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
  end

  def create
    @question = Question.find(params[:question_id])
    @category['question_id'] = @question.id #one to one
    
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
        # def show
        #   if params[:query].start_with?('#')
        #     query  = params[:query].gsub('#', '')
        #     @questions = Question.joins(:hash_tags).where(hash_tags: {name: query})
        #   else
        #     @questions = Question.where("description like ?", "%#{params[:query]}%")
        #   end
        # end

    end

  def destroy
  end

end
