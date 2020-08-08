class CommentsController < ApplicationController
  def index
  end

  def create
    @question = Question.find(params[:question_id])
    @comment = Comment.new(comment_params)
    @comment['question_id'] = @question.id
    @comment['user_id'] = current_user.id 
    
    if @comment.save
      flash[:notice] = "Comment Created!"
      redirect_to question_path(@question.id)
    else 
      flash[:alert] = "Comment Not Created!"
      redirect_to question_path(@question.id)
    end
    
  end

  def new
  end

  def update
  end

  def destroy
  end

  def edit
  end

  def show
  end

  def comment_params
    params.require(:comment).permit(:user_id, :comment_text, :post_id)
    end
    
end
