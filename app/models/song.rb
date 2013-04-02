class Song < ActiveRecord::Base
  attr_accessible :chords, :comment, :title, :url, :performers
  has_many :comments, dependent: :destroy

  validates :title, :presence => {:message => 'cannot be blank'}
  validates :url, :presence => {:message => 'cannot be blank'}

end
