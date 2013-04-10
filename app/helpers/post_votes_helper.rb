module PostVotesHelper
  def total_post_karma(post_id)
    PostVote.where(:post_id => post_id).count
  end
end
