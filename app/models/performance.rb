class Performance < ActiveRecord::Base
  attr_accessible :role, :song_id, :user_id

  belongs_to :song
  belongs_to :user
end
