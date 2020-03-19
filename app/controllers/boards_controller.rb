class BoardsController < ApplicationController

  def index;@boards = Board.all;end
  def new;@board = Board.new;end
  def create
    @board = Board.new(board_params) 
    @board.save
  end

  private
  def board_params
    params.require(:board).permit(:title,{category_ids: []})
  	# params.require(:group).permit(:name,{user_ids: []})
  end

end
