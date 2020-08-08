class CommentsController < ApplicationController
  def index
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.question_id = params[:question_id]
    @comment.save
    redirect_to question_path(@comment.question)
    
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
    params.require(:comment).permit(:user_id, :comment_text)
    end
    
end
