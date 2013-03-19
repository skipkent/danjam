module ApplicationHelper

  def commentsCount(song_id)
    count = Comment.where(song_id: song_id).size
  end

end
