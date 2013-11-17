class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.text  :date
      t.text  :venue
      t.text  :description
      t.text  :directions
      t.timestamps
    end
  end
end
