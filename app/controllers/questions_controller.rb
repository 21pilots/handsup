class QuestionsController < ApplicationController
  def index
    @questions = Question.order(id: :desc).all
  end
  
  def create
    question = Question.new
    question.user = current_user
    question.title = params[:title]  
    question.major = params[:major]  
    question.content = params[:content]  
    question.save  
    redirect_to root_path  
  end
end
