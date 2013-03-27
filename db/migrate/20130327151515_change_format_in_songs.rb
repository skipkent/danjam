class ChangeFormatInSongs < ActiveRecord::Migration
  def up
	  change_column :songs, :performers, :text
  end

  def down
	  change_column :songs, :performers, :string
  end
end
