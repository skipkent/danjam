class Gig < ActiveRecord::Base
  attr_accessible :date, :venue, :venue_link, :venue_image, :time, :description, :directions
  validates_presence_of :date, :venue
end
