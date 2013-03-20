class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :songs, :comment, :chords
  end

end
