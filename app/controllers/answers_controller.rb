class AnswersController < ApplicationController
  def index
    @answers = Answer.order(id: :desc).all
  end

  def create
    answer = Answer.new
    answer.user = current_user
    answer.title = params[:title]  
    answer.content = params[:content]  
    answer.save  
    redirect_to root_path  
  end

  def show
  end

  def new
  end

  def edit
  end
end
