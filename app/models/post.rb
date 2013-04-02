class Post < ActiveRecord::Base
  attr_accessible :message, :title, :username 
  has_many :comments, dependent: :destroy

  validates :title, :presence => {:message => ' cannot be blank'}
  validates :username, :presence => {:message => ' cannot be blank'}
end
