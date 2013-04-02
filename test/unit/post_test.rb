require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "post should not save to db without title" do
    post = Post.new
    post.username = "jtestcase"
    assert !post.save, "POST WITHOUT TITLE WAS SAVED TO DB"
  end

  test "post should not save to db without username" do
    post = Post.new
    post.title = "unit test post title"
    assert !post.save, "POST WITHOUT USERNAME WAS SAVED TO DB"
  end

  test "post with title and username only should save to db" do
    post = Post.new
    title = "unit test post title"
    username = "jtestcase"
    post.title = title
    post.username = username
    assert post.save, "POST WITH TITLE AND USERNAME ONLY DID NOT SAVE TO DB"
    assert Post.last.title = title, "POST TITLE NOT SAVED CORRECTLY"
    assert Post.last.username = username, "POST USERNAME NOT SAVED CORRECTLY"
  end

  test "post with title, username and message should save to db" do
    post = Post.new
    title = "unit test post title"
    username = "jtestcase"
    message = "unit test post message"
    post.title = title
    post.username = username
    post.message = message
    assert post.save, "POST WITH TITLE, USERNAME AND MESSAGE DID NOT SAVE TO DB"
    assert Post.last.title = title, "POST TITLE NOT SAVED CORRECTLY"
    assert Post.last.username = username, "POST USERNAME NOT SAVED CORRECTLY"
    assert Post.last.message = message, "POST MESSAGE NOT SAVED CORRECTLY"
  end

end
