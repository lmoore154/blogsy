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

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render status: 200
  end

  def upvote
    @post = Post.find(params[:id])
    @post.upvotes += 1
    @post.save
    render json: @post
  end

end
