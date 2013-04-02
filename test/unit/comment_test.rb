require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  test "username is required" do
    comment = Comment.new
    assert !comment.save, "COMMENT SAVED WITHOUT USERNAME"
  end

  test "comment with username is saved to db" do
    comment = Comment.new
    comment.username = "jtestcase"
    assert comment.save, "COMMENT WITH USERNAME NOT SAVED"
  end

end
