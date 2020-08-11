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

    #to get polls voted by user
    #search through the options table, each time the user id is found, get the question
    #send the list of question to view to render

  end

  def destroy
  end
end
