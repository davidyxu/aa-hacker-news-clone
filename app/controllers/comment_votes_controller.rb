class CommentVotesController < ApplicationController
  def new
  end
  def create
    if CommentVote.where("comment_id = ? AND user_id = ?", params[:comment_id],
                                                       current_user.id).empty?
      CommentVote.create(:comment_id => params[:comment_id],
                     :user_id => current_user.id)
    end
    redirect_to :back
  end
end
