class AddColumnToComments < ActiveRecord::Migration
  def change
    add_column :comments, :c_type, :string
  end
end
