class BoardController < ApplicationController
  def index
  end

  def show
    current_board_id = params[:board_id].to_i
    @the_board = Board.find(current_board_id)
    @active_posts = @the_board.posts.active
    @inactive_posts = @the_board.posts.inactive
  end

  def create
    new_board = Board.new
    new_board.name = params[:query_name]
    new_board.save

    redirect_to '/'
  end


end
