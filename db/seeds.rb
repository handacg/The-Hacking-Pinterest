# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do 
  user = User.create!(name: Faker::HarryPotter.character)
end

30.times do
  pin = Pin.create!(url: Faker::Internet.url, user_id: (rand(10) + 1))
end

50.times do
  comment = Comment.create!(content: Faker::Movie.quote, pin_id: (rand(30) +1), user_id: (rand(10) +1))
end
