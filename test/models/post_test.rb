require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "comments are automatically counted for a post" do
    post = create(:post)
    comment = post.comments.create(body: "This is a comment", user_id: post.user.id)
    assert_equal 1, post.comments_count
    assert post.comments.first == comment
  end

  context "posts" do
    should have_many(:comments)
    should belong_to(:user)
  end

  context "validations" do
    should validate_presence_of(:title)
    should validate_presence_of(:body)
  end
end
