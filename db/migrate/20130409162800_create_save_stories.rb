class CreateSaveStories < ActiveRecord::Migration
  def change
    create_table :save_stories do |t|
      t.references :user
      t.references :post

      t.timestamps
    end
    add_index :save_stories, :user_id
    add_index :save_stories, :post_id
  end
end
