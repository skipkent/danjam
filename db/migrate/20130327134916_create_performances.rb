class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :song_id
      t.integer :user_id
      t.string :role

      t.timestamps
    end
  end
end
