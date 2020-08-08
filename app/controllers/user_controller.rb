class UserController < ApplicationController
    # before_action :set_question, only: [:show, :edit, :destroy, :update]

    def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @user= User.find(params[:id])

  end

  def destroy
  end



end


