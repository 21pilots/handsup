class CommentsController < ApplicationController
    def create
        comment = Comment.new
        comment.question_id = params[:question_id]
        comment.content = params[:content]
        comment.save
        redirect_to root_path
    end
end
