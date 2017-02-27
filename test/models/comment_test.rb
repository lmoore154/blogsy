require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  context "comments" do
    should belong_to(:post)
    should belong_to(:user)
  end

  context "validations" do
    should validate_presence_of(:body)
  end
end
