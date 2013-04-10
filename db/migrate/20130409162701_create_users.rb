class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.text :about
      t.string :email
      t.integer :show_dead
      t.integer :no_procast
      t.integer :max_visit
      t.integer :min_away
      t.integer :delay

      t.timestamps
    end
  end
end
