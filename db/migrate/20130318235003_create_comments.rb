class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :song
      t.string :username
      t.text :message

      t.timestamps
    end
    add_index :comments, :song_id
  end
end
