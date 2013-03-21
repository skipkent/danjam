class Post < ActiveRecord::Base
  attr_accessible :message, :title, :username 
  has_many :comments, dependent: :destroy
end
