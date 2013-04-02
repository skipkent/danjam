require 'test_helper'

class SongTest < ActiveSupport::TestCase

  test "song without title will not save to db" do
    song = Song.new
    song.url = "http://www.youtube.com"
    assert !song.save, "SONG SAVED TO DB WITHOUT REQUIRED TITLE"
  end

  test "song without url will not save to db" do
    song = Song.new
    song.title = "Unit Test Song Title Should Not Be In DB"
    assert !song.save, "SONG SAVED TO DB WITHOUT REQUIRED URL"
  end

  test "song saved to db with title and url" do
    song = Song.new
    title = "Unit Test Song Title Should Be In DB"
    url = "http://www.youtube.com"
    song.title = title
    song.url = url
    assert song.save, "SONG WITH REQUIRED TITLE AND URL FAILED SAVE TO DB"
    assert Song.last.title = title
    assert Song.last.url = url
  end

end
