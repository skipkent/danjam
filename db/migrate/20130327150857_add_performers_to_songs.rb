class AddPerformersToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :performers, :string
  end
end
