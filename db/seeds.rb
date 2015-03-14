# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# users
30.times do
  User.create(username: Faker::Internet.user_name, password: 123456)
end

# subs
30.times do
  Sub.create(title: Faker::Lorem.words(4, true), description: Faker::Hacker.say_something_smart, moderator_id: rand(1..30))
end
# posts
200.times do
  Post.create(title: Faker::Hacker.noun, content: Faker::Hacker.say_something_smart, author_id: rand(1..30))
end
# post_subs
200.times do
  PostSub.create(post_id: rand(1..200), sub_id: rand(1..200))
end
