class CommentsController < ApplicationController
    before_action :authenticate_user!, only: [:create]
    
    def create
        comment = Comment.new
        comment.user_id = current_user.id #에러나면 id 지워봐
        comment.answer_id = params[:answer_id]
        comment.content = params[:content]
        comment.save
        redirect_to root_path
    end
end
