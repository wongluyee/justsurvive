# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning the DB..'
Booking.destroy_all
Experience.destroy_all
User.destroy_all

puts 'Creating  users...'
users = []
10.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "12345678"
  )
  users << user
end

puts 'Creating  experiences...'
experiences = []
user = users.sample
10.times do
  experience = Experience.create!(
    title: Faker::Mountain.name,
    location: Faker::Nation.capital_city,
    description: Experience::CATEGORY.sample,
    price: Faker::Number.number(digits: 4),
    category: Experience::CATEGORY.sample,
    user: user
  )
  experiences << experience
end

puts 'Creating  bookings...'
10.times do
  Booking.create!(
    status: ["pending", "accepted", "rejected"].sample,
    start_date: Faker::Date.between(from: '2023-02-23', to: '2023-03-01'),
    end_date: Faker::Date.between(from: '2023-03-02', to: '2023-03-25'),
    experience: experiences.sample,
    user: users.sample
  )
end

puts "... created #{Experience.count} experiences, #{User.count} users and
#{Booking.count} bookings."
