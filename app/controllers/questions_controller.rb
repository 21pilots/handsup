class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def index
    @questions = Question.order(id: :desc).all
  end
  
  def create
    question = Question.new
    question.user_id = current_user.id #에러나면 뒤에 id들을 지워봐
    question.title = params[:title]  
    question.major = params[:major]  
    question.content = params[:content]
    question.save  
    redirect_to root_path  
  end
  
  def upvote
    @question = Question.find(params[:id])
    @question.upvote_by current_user
    redirect_to root_path
  end
  
  def destroy
    @question = Question.find(params[:id])
    if current_user == @question.user
      @question.destroy
    end
    redirect_to root_path
  end
  
  def edit
    @question = Question.find(params[:id])
    if current_user == @question.user
      @question.update
    end
    redirect_to root_path
  end
  
  def update
    question = Question.find(params[:id])
    question.content = params[:content]
    question.save
    redirect_to root_path
  end
end
