
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


puts "Clearing Database of events.."

Event.destroy_all
User.destroy_all
Vibe.destroy_all
Language.destroy_all

puts "Creating 20 fake users..."

users = []
20.times do
  new_user = User.new(
  full_name: Faker::Name.name,
  email: Faker::Internet.email,
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: Faker::Address.country,
  origin_country: Faker::Address.country,
  birthday: Faker::Date.birthday(min_age: 18, max_age: 90),
  gender: Faker::Gender.type,
  profile_photo: "https://4.bp.blogspot.com/__UQSIjH59iA/TEmFazXpwXI/AAAAAAAAFgM/78haTrhcX3s/s1600/Look-At-Demi-Moore-Beautiful-Face-1280x1280-Pixels.jpg")

new_user.save!
users << new_user
end

puts "Creating 5 vibes..."

v1 = Vibe.create!(name: "Chill",
     :icon => 'https://source.unsplash.com/random')
v2 = Vibe.create!(name: "Sophisticated",
     :icon => 'https://source.unsplash.com/random')
v3 = Vibe.create!(name: "Party",
     :icon => 'https://source.unsplash.com/random')
v4 = Vibe.create!(name: "Saucy",
     :icon => 'https://source.unsplash.com/random')
v5 = Vibe.create!(name: "Adventurous",
     :icon => 'https://source.unsplash.com/random')

puts 'Creating 20 languages'

20.times do
  language = Language.new(
    language:    Faker::ProgrammingLanguage.name,
    icon:   'https://image.flaticon.com/icons/svg/197/197593.svg'
  )
  language.save!
end

puts 'Creating 20 Events'

events = []
20.times do
  event = Event.new(
    title:  Faker::Restaurant.type ,
    address: Faker::Address.city,
    description: Faker::Restaurant.description,
    start_time: "#{Date.today}-#{["19:00","20:00"].sample}",
    user: users.sample,
    vibe: [v1, v2, v3, v4, v5].sample,
    capacity: 6,
  )
  event.save!
  events << event
end

puts "Creating random number of spots..."

events.each do |event|
  possible_attendants = users.reject { |u| u == event.user }
  rand(1..6).times do
    spot = Spot.new(
      user: possible_attendants.shuffle.pop,
      event: event
    )
    spot.save!
  end
end

puts "Created #{Spot.count} spots"

puts 'Finished!'
