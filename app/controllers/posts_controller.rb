class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end

  def comments
    @comments = Post.find(params[:id]).comments
    render json: @comments
  end

end
