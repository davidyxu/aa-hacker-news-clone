class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :parent_id
      t.references :post
      t.integer :author_id

      t.timestamps
    end
  end
end
