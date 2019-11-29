
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

puts 'Creating 7 Events'

events = []

  e1 = Event.new(
    title:  "Explore the German Market",
    address: "Skalitzer Str. 97",
    description: "Let's go explore a German a market. Get some good food and drinks while we do it.",
    start_time: "#{Date.today}- 16:00",
    user: users.sample,
    vibe: v1,
    capacity: 6,
    photo: "https://twoandahalfbloggers.files.wordpress.com/2014/12/dscf2096.jpg",
  )
  e1.save!

  e2 = Event.new(
    title:  "A German Night Out!",
    address: "Oderberger Str. 21, 10435 Berlin",
    description: "An authentic German restaurant that I've always wanted to check out.",
    start_time: "#{Date.today}- 19:00",
    user: users.sample,
    vibe: v1,
    capacity: 6,
    photo: "https://clovereats.files.wordpress.com/2014/08/metzger-4.jpg",
  )
  e2.save!

  e3 = Event.new(
    title:  "Cocktail Night!",
    address: "Winterfeldtstraße 50, Berlin",
    description: "See where the night takes us after a few cocktiails.",
    start_time: "#{Date.today}- 20:00",
    user: users.sample,
    vibe: v4,
    capacity: 6,
    photo: "https://makemeacocktail.com/blog/wp-content/uploads/2019/02/a1.jpg",
  )
  e3.save!

  e4 = Event.new(
    title:  "Let's be Fancy",
    address: "Nollendorfstraße 27, 10777 Berlin",
    description: "Let's pretend to be venture capitalists.",
    start_time: "#{Date.today}- 20:00",
    user: users.sample,
    vibe: v2,
    capacity: 6,
    photo: "https://pea-7f65.kxcdn.com/img/image_db/michelin_restaurants_in_rome-942.jpg",
  )
  e4.save!

  e5 = Event.new(
    title:  "Kit Kat - Let's Do it !",
    address: "Köpenicker Str. 76, 10179 Berlin",
    description: "You only live once. Let's go take on Kit Kat.",
    start_time: "#{Date.today}- 23:00",
    user: users.sample,
    vibe: v5,
    capacity: 6,
    photo: "https://i.pinimg.com/736x/74/12/d3/7412d387ecb00da630ca9026eabbd2e0.jpg",
  )
  e5.save!

  e6 = Event.new(
    title:  "Bier Garten",
    address: "Kastanienallee 7-910435 Berlin",
    description: "We have to go to at least one German Bier Garten. Come join me for a few biers.",
    start_time: "#{Date.today}- 16:00",
    user: users.sample,
    vibe: v5,
    capacity: 6,
    photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Hofbraeukeller_5906.JPG/1200px-Hofbraeukeller_5906.JPG",
  )
  e6.save!

  e7 = Event.new(
    title:  "Dance!",
    address: "Köpenicker Str. 70",
    description: "Let's go explore some clubs in Berlin.",
    start_time: "#{Date.today}- 22:00",
    user: users.sample,
    vibe: v3,
    capacity: 6,
    photo: "http://club54.ca/wp-content/uploads/2014/02/1ClubMay244.jpg",
  )
  e7.save!

  events == [e1, e2, e3, e4, e5, e6, e7]




# 20.times do
#   event = Event.new(
#     title:  Faker::Restaurant.type,
#     address: Faker::Address.city,
#     description: Faker::Restaurant.description,
#     start_time: "#{Date.today}-#{["19:00","20:00"].sample}",
#     user: users.sample,
#     vibe: [v1, v2, v3, v4, v5].sample,
#     capacity: 6,
#   )
#   event.save!
#   events << event
# end

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

# puts "Creating photo seeds..."

# photo_url = "https://media.istockphoto.com/photos/handsome-and-happy-picture-id516065432?k=6&m=516065432&s=612x612&w=0&h=0On1LTM9MSRBK7DlQPd71uakgMR74moV4LSgv-ZLQmk="
# photo_url = "https://static6.depositphotos.com/1051698/612/i/950/depositphotos_6124126-stock-photo-african-woman-beautiful-face.jpg"
# photo_url = "https://media.istockphoto.com/photos/mature-businessman-smiling-over-white-background-picture-id685132245?k=6&m=685132245&s=612x612&w=0&h=KO9YNXHtaYV4NGqoGQcTd5Aq8zD0Dl06knQQGP0BrwM="
# # photo_url = ""
# # photo_url = ""
# # photo_url = ""
# # photo_url = ""
# # photo_url = ""
# # photo_url = ""
# # photo_url = ""
# # photo_url = ""
# # photo_url = ""


# puts "Created photo seeds"

puts 'Finished!'
