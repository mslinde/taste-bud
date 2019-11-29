
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

photos = ["https://4.bp.blogspot.com/__UQSIjH59iA/TEmFazXpwXI/AAAAAAAAFgM/78haTrhcX3s/s1600/Look-At-Demi-Moore-Beautiful-Face-1280x1280-Pixels.jpg", "https://media.istockphoto.com/photos/handsome-and-happy-picture-id516065432?k=6&m=516065432&s=612x612&w=0&h=0On1LTM9MSRBK7DlQPd71uakgMR74moV4LSgv-ZLQmk=", "https://static6.depositphotos.com/1051698/612/i/950/depositphotos_6124126-stock-photo-african-woman-beautiful-face.jpg", "https://media.istockphoto.com/photos/mature-businessman-smiling-over-white-background-picture-id685132245?k=6&m=685132245&s=612x612&w=0&h=KO9YNXHtaYV4NGqoGQcTd5Aq8zD0Dl06knQQGP0BrwM=", "https://st.depositphotos.com/2022413/4820/i/950/depositphotos_48203351-stock-photo-japanese-asian-man-face.jpg", "https://st.depositphotos.com/1773655/1376/i/950/depositphotos_13764564-stock-photo-young-mans-face-serious-expression.jpg", "https://www.goodfreephotos.com/albums/people/young-man-in-a-corporate-suit-face-portrait.jpg", "https://wallpaperstock.net/wallpapers/thumbs1/1555.jpg", "https://media.istockphoto.com/photos/beauty-woman-portrait-girl-with-beautiful-face-smiling-picture-id936967024?k=6&m=936967024&s=612x612&w=0&h=OIOTru5Ll93_504da-cg9IsTf87b2zAve-n9fRL07A4=", "https://st2.depositphotos.com/6775664/9561/i/950/depositphotos_95613926-stock-photo-female-model-face-with-stylish.jpg", "https://media.beliefnet.com/~/media/photos-with-attribution/entertainment/celebrities/mark_zuckerberg.jpg", "https://www.designbolts.com/wp-content/uploads/2019/02/beautiful-girl-face-free-stock-photo-1.jpg"]
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
  profile_photo: photos.shuffle.pop
)
new_user.save!
users << new_user
end

puts "Creating 5 vibes..."

v1 = Vibe.create!(name: "Chill",
     :icon => "Icon_Chilled.png")
v2 = Vibe.create!(name: "Sophisticated",
     :icon => "Icon_Sophisticated.png")
v3 = Vibe.create!(name: "Party",
     :icon => "Icon_Party.png")
v4 = Vibe.create!(name: "Saucy",
     :icon => "Icon_Saucy.png")
v5 = Vibe.create!(name: "Adventurous",
     :icon => "Icon_Adventure.png")

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
    title:  Faker::Restaurant.type,
    address: Faker::Address.city,
    description: Faker::Restaurant.description,
    start_time: "#{Date.today}-#{["19:00","20:00"].shuffle.pop}",
    user: users.shuffle.pop,
    vibe: [v1, v2, v3, v4, v5].shuffle.pop,
    capacity: 6,
  )
  event.save!
  events << event
end

puts "Creating random number of spots..."

events.each do |event|
  possible_attendants = users.reject { |u| u == event.user }
  rand(1..5).times do
    spot = Spot.new(
      user: possible_attendants.shuffle.pop,
      event: event
    )
    # possible_attendants = possible_attendants.reject {|u| u == spot.user }
    spot.save!
  end
end

puts "Created #{Spot.count} spots"


puts 'Finished!'
