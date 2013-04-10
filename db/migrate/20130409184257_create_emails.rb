class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :email_address
      t.references :user

      t.timestamps
    end
    add_index :emails, :user_id
  end
end
