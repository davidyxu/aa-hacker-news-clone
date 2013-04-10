class PostVotesController < ApplicationController
  def create
    if PostVote.where("post_id = ? AND user_id = ?", params[:post_id],
                                                       current_user.id).empty?
      PostVote.create(:post_id => params[:post_id],
                     :user_id => current_user.id)
    end
    redirect_to :back
  end
end
