require 'test_helper'

class PostHttpTest < ActionDispatch::IntegrationTest

  test "it should get all posts" do
    post = create(:post)
    get '/posts'
    assert response.ok?
    posted = JSON.parse(response.body)
    assert_equal post.title, posted.first["title"]
  end

  test "it should get a specific post" do
    post = create(:post)
    get "/posts/#{post.id}"
    assert response.ok?
    posted = JSON.parse(response.body)
    assert_equal post.id, posted["id"]
  end

  test "it should get comments on a post" do
    comment = create(:comment)
    get "/posts/#{comment.post.id}/comments"
    assert response.ok?
    posted = JSON.parse(response.body)
    assert_equal comment.body, posted.first["body"]
  end

  test "it should delete a post" do
    post = create(:post)
    post_count = Post.all.count
    assert post.save
    delete "/posts/#{post.id}"
    assert_equal (post_count - 1), Post.all.count 
  end

end
