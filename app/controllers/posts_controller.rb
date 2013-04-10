class PostsController < ApplicationController
  def index
    @posts = Post.includes(:author)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.author_id = current_user.id
    #params[:id]
    @post.body = nil unless @post.link.empty?
    if @post.save
      redirect_to post_url(@post)
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @post = Post.find(params[:id])
    @comments = Comment.where(:post_id => @post.id).includes(:author)
  end


end
