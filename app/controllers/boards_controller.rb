class BoardsController < ApplicationController

  def index;@boards = Board.limit(5);end
  def new
    @board = Board.new;
    @categories = Category.all
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to board_path @board
  end

  def show 
    @board = Board.find(params[:id])
  end

  def search
    # title
    @b = Board.where("title like ?","%#{search_params[:text]}%").ids
    # text
    @c =  Comment.where("text like ?","%#{search_params[:text]}%")
    @c.each do |c|
      @b << c.board_id #title and textをまとめる
    end
    @boards = Board.where(id: @b)
  end

  private
  def board_params
    params.require(:board).permit(:title,{category_ids: []})
  end

  def search_params
    params.require(:board).permit(:text)
  end

end