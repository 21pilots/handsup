class AnswersController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def index
    @answers = Answer.order(id: :desc).all
  end

  def create
    answer = Answer.new
    answer.user_id = current_user.id #에러나면 id지워봐
    answer.question_id = params[:question_id] 
    answer.title = params[:title]  
    answer.content = params[:content]  
    answer.save  
    redirect_to root_path  
  end

  def new
    @question=Question.find(params[:question_id])
  end

  def upvote
    @answer = Answer.find(params[:id])
    @answer.upvote_by current_user
    redirect_to root_path
  end
  
  def destroy
    @answer = Answer.find(params[:id])
    if current_user == @answer.user
      @answer.destroy
    end
    answer.destroy
    redirect_to root_path
  end
  
  def edit
    #@question=Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    if current_user == @answer.user
      @answer.edit
    end
    redirect_to root_path
  end
  
  def update
    answer = Answer.find(params[:id])
    answer.content = params[:content]
    answer.save
    redirect_to root_path
  end
end
