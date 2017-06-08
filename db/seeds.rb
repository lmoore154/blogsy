# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  user = User.create!(
    username: Faker::Cat.name,
    email: Faker::Internet.email
    )
    rand(1..10).times do
      user.posts.create!(
        title: Faker::Book.title,
        body: Faker::Lorem.sentences
        )
    end
end

posts = Post.all
posts.each do |post|
  rand(1..5).times do
    post.comments.create!(
      body: Faker::HarryPotter.quote
    )
  end
end
