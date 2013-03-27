class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :preferred_contact_channel
      t.text :private_bio
      t.text :public_bio
      t.boolean :display_public

      t.timestamps
    end
  end
end
