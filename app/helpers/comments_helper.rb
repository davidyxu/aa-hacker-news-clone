module CommentsHelper
  def comment_count(post_id)
    Comment.where(:post_id => post_id).count
  end
end
