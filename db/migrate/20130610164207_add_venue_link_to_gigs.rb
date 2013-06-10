class AddVenueLinkToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :venue_link, :string
  end
end
