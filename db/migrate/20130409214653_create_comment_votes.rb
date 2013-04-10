class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.references :user
      t.references :post

      t.timestamps
    end
    add_index :comment_votes, :user_id
    add_index :comment_votes, :post_id
  end
end
