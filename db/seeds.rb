
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Creating 20 fake users..."

User.destroy_all

user = []
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
  profile_photo: "https://www.pinclipart.com/picdir/middle/133-1331433_free-user-avatar-icons-happy-flat-design-png.png")

new_user.save!
user << new_user
end

puts "Clearing Database of events.."
Event.destroy_all
User.destroy_all
Vibe.destroy_all
Language.destroy_all

puts "Creating 5 vibes..."

v1 = Vibe.create!(name: Faker::FunnyName.name,
     :icon => 'https://source.unsplash.com/random')
v2 = Vibe.create!(name: Faker::FunnyName.name,
     :icon => 'https://source.unsplash.com/random')
v3 = Vibe.create!(name: Faker::FunnyName.name,
     :icon => 'https://source.unsplash.com/random')
v4 = Vibe.create!(name: Faker::FunnyName.name,
     :icon => 'https://source.unsplash.com/random')
v5 = Vibe.create!(name: Faker::FunnyName.name,
     :icon => 'https://source.unsplash.com/random')

puts 'Creating 20 languages'

20.times do
  language = Language.new(
    language:    Faker::ProgrammingLanguage.name,
    icon:   'https://image.flaticon.com/icons/svg/197/197593.svg'
  )
  language.save!
end

user1 = User.create!(full_name:"Name", email:"test@example.com", password:"123456")

puts 'Creating 20 Events'

20.times do
  event = Event.new(
    title:  Faker::Restaurant.type ,
    address: Faker::Address.city,
    description: Faker::Restaurant.description,
    start_time: "#{Date.today}-#{["19:00","20:00"].sample}",
    user: user.sample, # User.find(rand(1..20))
    vibe: [v1, v2, v3, v4, v5].sample,
    capacity: 6,
  )
  event.save!

end

puts 'Finished!'
