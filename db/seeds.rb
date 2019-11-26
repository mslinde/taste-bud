# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating 20 fake users..."

20.times do
  user = User.new(

  full_name: Faker::Name
  email_address: Faker::Internet.email
  encrypted_password:, Faker::Internet.password
  full_name: Faker::Name
  current_country: Faker::Address.country
  origin_country: Faker::Address.country
  birthday: Faker::Date.birthday(min_age: 18, max_age: 90)
  gender: Faker::Gender.type
  profile_photo:
)

  User.save!
end

puts "Finished!"
