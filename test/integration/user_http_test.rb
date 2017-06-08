require 'test_helper'

class UserHttpTest < ActionDispatch::IntegrationTest

  test "it should get all the users" do
    user = create(:user)
    get '/users'
    assert response.ok?
    posted_user = JSON.parse(response.body)
    assert_equal user.username, posted_user.first["username"]
  end

  test "it should make a user" do
    new_user = { user: { username: "user", email: "email@email.com", bio: "bio" } }
    post "/users",
    params: new_user
    assert response.ok?
    posted = JSON.parse(response.body)
    assert_equal new_user[:user][:username], posted["username"]
  end

  test "it should get posts for a user" do
    post = create(:post)
    get "/users/#{post.user.id}/posts"
    assert response.ok?
    posted = JSON.parse(response.body)
    assert_equal post.title, posted.first["title"]
  end

end
