class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :link
      t.text :body
      t.integer :author_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
