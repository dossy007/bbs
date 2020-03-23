class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
    @comment = Comment.new(text_params)
    @comment.save
    redirect_to board_path @comment.board_id
  end

  private

  def text_params
    params.require(:comment).permit(:text,:board_id).merge(user_id: current_user.id)
  end
end
