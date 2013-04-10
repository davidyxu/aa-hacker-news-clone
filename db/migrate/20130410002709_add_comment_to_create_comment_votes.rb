class AddCommentToCreateCommentVotes < ActiveRecord::Migration
  def change
    change_table :comment_votes do |t|
      t.references :comment
    end
  end
end
