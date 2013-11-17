class AddTimeToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :time, :text
  end
end
