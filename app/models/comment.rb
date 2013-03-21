class Comment < ActiveRecord::Base
  belongs_to :song
  belongs_to :post
  attr_accessible :message, :username, :song_id, :post_id, :c_type

end
