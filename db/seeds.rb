# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::Config.random = Random.new(42)

# Generate 10 random users
10.times do
  username = Faker::Internet.unique.username(specifier: 5..8)
  email = Faker::Internet.free_email(name: username)
  password = "qwer1234"
  profile_description = Faker::TvShows::TheITCrowd.quote
  User.create! :username => username, :email => email, :password => password, :password_confirmation => password, :profile_description => profile_description
end

# Generate 10 random questions
10.times do |idx|
  option_1 = Faker::Verb.base
  option_2 = Faker::Verb.base
  question_text = "Should I " + option_1 + " or " + option_2 + "?"
  description = Faker::TvShows::Friends.quote
  expiry_date = Time.now + rand(6) * 60 * 60
  user_id = 1 + rand(10)

  Question.create(
    question_text: question_text,
    description: description,
    expiry_date: expiry_date,
    user_id: user_id,
  )

  Option.create(
    option_text: option_1,
    votes: 0,
    voters: [],
    question_id: idx + 1,
  )

  Option.create(
    option_text: option_2,
    votes: 0,
    voters: [],
    question_id: idx + 1,
  )
end

#Generate random comments
20.times do |idx|
  comment_text = Faker::TvShows::Simpsons.quote
  question_id = 1 + rand(10)
  user_id = 1 + rand(10)

  Comment.create(
    comment_text: comment_text,
    question_id: question_id,
    user_id: user_id,
  )
end
