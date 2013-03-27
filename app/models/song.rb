class Song < ActiveRecord::Base
  attr_accessible :chords, :comment, :title, :url, :performers
  has_many :comments, dependent: :destroy

end
