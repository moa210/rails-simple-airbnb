# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
25.times do
  Flat.new(
    description: Faker::Hipster.sentence(3, false, 4),
    name: Faker::Artist.name,
    price_per_night: "£#{Faker::Commerce.price}",
    address: "#{Faker::Friends.location}, #{Faker::Pokemon.location}",
    number_of_guests: [(1..6)].sample).save
  end

# Flat.new()
