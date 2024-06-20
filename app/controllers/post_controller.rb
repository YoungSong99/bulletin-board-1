class PostController < ApplicationController
  def create
    new_post = Post.new
    new_post.title = params[:query_title]
    new_post.body = params[:query_body]
    new_post.expires_on = params[:query_expires_on]
    new_post.board_id = params[:query_board_id]

    new_post.save
    redirect_to '/boards/' + new_post.board_id.to_s

  end
end
