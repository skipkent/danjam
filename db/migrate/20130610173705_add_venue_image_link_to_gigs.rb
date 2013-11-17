class AddVenueImageLinkToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :venue_image, :text
  end
end
