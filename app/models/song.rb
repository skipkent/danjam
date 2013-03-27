class Song < ActiveRecord::Base
  attr_accessible :chords, :comment, :title, :url
  has_many :comments, dependent: :destroy
  has_many :performances
	has_many :users, :through => :performances
end
