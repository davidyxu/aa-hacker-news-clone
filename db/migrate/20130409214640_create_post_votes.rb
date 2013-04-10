class CreatePostVotes < ActiveRecord::Migration
  def change
    create_table :post_votes do |t|
      t.references :user
      t.references :post

      t.timestamps
    end
    add_index :post_votes, :user_id
    add_index :post_votes, :post_id
  end
end
