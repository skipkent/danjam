class Gigs < ActiveRecord::Migration
  def up
    create_table :gigs do |t|
      t.text  :date
      t.text  :venue
      t.text  :description
      t.text  :directions
    end
  end

  def down
    drop_table :gigs
  end
end
