module ApplicationHelper

  def commentsCountSong(song_id)
    count = Comment.where(song_id: song_id).size
  end

  def commentsCountPost(post_id)
    count = Comment.where(post_id: post_id).size
  end

end
