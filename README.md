
# User.order(post_count: :desc) 

Lily had the most posts (9)
ID: 2
Email: marlen@vandervort.com


Explorer Mode
- Your app should have two models (id, createdat and updatedat columns are assumed on all of the below):
- User: A user has a username, an email address, and a bio
- Post: A post has a title, a body, an associated user, and a summary
- A post can't be created without a user. It also can't be created without a title or a body
- A user can't be created without a username or email.
- Use your seeds.rb file to seed your development database with five users, each with a random number of posts.
- Use faker to generate the data.
- Use rails console to explore your data and update your app's README (by hand is fine) to give stats on the most-prolific user.

Adventure Mode
- Add another model
  - Comment: A comment has a body and belongs to both a user and a post
- A comment can't be created without a user or a post. It also can't be created without a body of some sort.
- Add a posts_count columns to your users
- Add a comments_count column to your posts
- A user's posts_count column should reflect the number of posts that user has authored and update automatically.
- A post's comments_count column should reflect the number of comments left on that post and update automatically.

Epic Mode
- All of the above should be unit tested.
- Use factory_girl to add test data.
- Use shoulda to test the relationships and validations.
