class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.author_id = current_user.id
    if @comment.save
      redirect_to comment_path(@comment)
    else
      render :new
    end
  end

  def show
    @current_comment = Comment.includes(:author).find(params[:id])
    @comment = Comment.new
    #@comments = add stuff to find children # REV: ... 
    @comments = Comment.where(:post_id => @current_comment.post_id)
  end
end

# REV: I agree that comments should not be able to be edited.  