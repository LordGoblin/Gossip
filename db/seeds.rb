# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

###user:
10.times do
  user = User.create!(city_id: rand(1..City.count), first_name: Faker::LordOfTheRings.character, last_name: Faker::LordOfTheRings.character, description: Faker::LeagueOfLegends.quote, email: Faker::Internet.email, age: rand(18..666))
end

###city
10.times do
	city = City.create!(title: Faker::LordOfTheRings.location, content: Faker::Hobbit.quote)
end