class Comment < ActiveRecord::Base
  belongs_to :song
  attr_accessible :message, :username, :song_id
end
