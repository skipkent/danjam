class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :instruments, :string
    add_column :users, :vocals, :boolean
  end
end
