# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning the DB..'
Experience.destroy_all

puts 'Creating restaurants...'
10.times do
  Experience.create(
    title: Faker::Restaurant.name,
    location: Faker::Address.street_address,
    description: Restaurant::CATEGORY.sample
    price:
    category:
  )
end
puts "... created #{Experience.count} restaurants."
