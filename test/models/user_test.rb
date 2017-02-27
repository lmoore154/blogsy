require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "posts are counter cached for a user" do
    user = create(:user)
    post = create(:post, user_id: user.id)
    assert_equal 1, post.user.posts_count
    assert user.posts.first == post
  end

  context "users" do
    should have_many(:posts)
    should have_many(:comments)
  end

  context "validations" do
    should validate_presence_of(:username)
    should validate_presence_of(:email)
  end

end
