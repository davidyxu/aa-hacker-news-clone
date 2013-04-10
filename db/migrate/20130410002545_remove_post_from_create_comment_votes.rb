class RemovePostFromCreateCommentVotes < ActiveRecord::Migration
  def change
    remove_column :comment_votes, :post
  end
end
