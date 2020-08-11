class UsersController < ApplicationController
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
    @user = User.find(params[:id])

    if @user.questions.any?
      #for each of the question the user has
      @user.questions.each do |question|
        # for each of the option in each question
        question.options.each do |option|
          # Replace the option.voters array with the username of the voters
          option.voters.each_with_index do |voter, idx|
            option.voters[idx] = User.find(voter).username
          end
        end
      end
    end
  end

  def destroy
  end
end
