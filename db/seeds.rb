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
Spot.destroy_all

puts "Creating 20 users..."

# photos = ["https://4.bp.blogspot.com/__UQSIjH59iA/TEmFazXpwXI/AAAAAAAAFgM/78haTrhcX3s/s1600/Look-At-Demi-Moore-Beautiful-Face-1280x1280-Pixels.jpg", "https://media.istockphoto.com/photos/handsome-and-happy-picture-id516065432?k=6&m=516065432&s=612x612&w=0&h=0On1LTM9MSRBK7DlQPd71uakgMR74moV4LSgv-ZLQmk=", "https://static6.depositphotos.com/1051698/612/i/950/depositphotos_6124126-stock-photo-african-woman-beautiful-face.jpg", "https://media.istockphoto.com/photos/mature-businessman-smiling-over-white-background-picture-id685132245?k=6&m=685132245&s=612x612&w=0&h=KO9YNXHtaYV4NGqoGQcTd5Aq8zD0Dl06knQQGP0BrwM=", "https://st.depositphotos.com/2022413/4820/i/950/depositphotos_48203351-stock-photo-japanese-asian-man-face.jpg", "https://st.depositphotos.com/1773655/1376/i/950/depositphotos_13764564-stock-photo-young-mans-face-serious-expression.jpg", "https://www.goodfreephotos.com/albums/people/young-man-in-a-corporate-suit-face-portrait.jpg", "https://wallpaperstock.net/wallpapers/thumbs1/1555.jpg", "https://media.istockphoto.com/photos/beauty-woman-portrait-girl-with-beautiful-face-smiling-picture-id936967024?k=6&m=936967024&s=612x612&w=0&h=OIOTru5Ll93_504da-cg9IsTf87b2zAve-n9fRL07A4=", "https://st2.depositphotos.com/6775664/9561/i/950/depositphotos_95613926-stock-photo-female-model-face-with-stylish.jpg", "https://media.beliefnet.com/~/media/photos-with-attribution/entertainment/celebrities/mark_zuckerberg.jpg", "https://www.designbolts.com/wp-content/uploads/2019/02/beautiful-girl-face-free-stock-photo-1.jpg"]
users = []
  u1 = User.new(
  full_name: "Aziza Kaya",
  email: "audie@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Germany",
  origin_country: "Turkey",
  birthday: "1990-03-25",
  gender: "female",
  profile_photo: "https://avatars1.githubusercontent.com/u/22366727?v=4"
)
 u1.save!

  u2 = User.new(
  full_name: "Terisa Laskerm",
  email: "terisa@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Poland",
  origin_country: "Sweden",
  birthday: "1993-05-08",
  gender: "female",
  profile_photo: "https://avatars1.githubusercontent.com/u/51717607?v=4"
)
  u2.save!
  u3 = User.new(
  full_name: "Greg Luker",
  email: "Greg@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Germany",
  origin_country: "Switzerland",
  birthday: "1987-09-07",
  gender: "male",
  profile_photo: "https://avatars3.githubusercontent.com/u/39704300?v=4"
)
  u3.save!
  u4 = User.new(
  full_name: "Deon Wiley",
  email: "Deon@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Thailand",
  origin_country: "United States",
  birthday: "1994-11-20",
  gender: "male",
  profile_photo: "https://avatars1.githubusercontent.com/u/8417681?v=4"
)
  u4.save!

  u5 = User.new(
  full_name: "Santos Gondek",
  email: "Santos@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "France",
  origin_country: "Chile",
  birthday: "1992-01-02",
  gender: "male",
  profile_photo: "https://avatars1.githubusercontent.com/u/55092167?v=4"
)
  u5.save!

  u6 = User.new(
  full_name: "Costanzo Allione",
  email: "costanzo@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Ireland",
  origin_country: "Italy",
  birthday: "1990-03-25",
  gender: "female",
  profile_photo: "https://avatars1.githubusercontent.com/u/47447669?v=4"
)
  u6.save!

  u7 = User.new(
  full_name: "Sebastian Aduart",
  email: "Sebastian@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "France",
  origin_country: "France",
  birthday: "1989-3-15",
  gender: "male",
  profile_photo: "https://avatars2.githubusercontent.com/u/51322980?v=4"
)
  u7.save!

  u8 = User.new(
  full_name: "Sebrina Whipps",
  email: "Sebrina@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Germany",
  origin_country: "United Kingdom",
  birthday: "1988-08-17",
  gender: "female",
  profile_photo: "https://avatars1.githubusercontent.com/u/51462314?v=4"
)
  u8.save!

  u9 = User.new(
  full_name: "Mathilde Mcnaught",
  email: "Mathilde@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Scotland",
  origin_country: "Ireland",
  birthday: "1990-05-12",
  gender: "female",
  profile_photo: "https://avatars3.githubusercontent.com/u/54211185?v=4"
)
  u9.save!

  u10 = User.new(
  full_name: "Cody Naylor",
  email: "Cody@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Brazil",
  origin_country: "Canada",
  birthday: "1990-02-10",
  gender: "male",
  profile_photo: "https://avatars2.githubusercontent.com/u/28503895?v=4"
)
  u10.save!

  u11 = User.new(
  full_name: "Toni Panacek",
  email: "Toni@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "China",
  origin_country: "United Kingdom",
  birthday: "1985-04-01",
  gender: "female",
  profile_photo: "https://avatars3.githubusercontent.com/u/31135213?v=4"
)
  u11.save!

  u12 = User.new(
  full_name: "Loretta Chandler",
  email: "Loretta@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Japan",
  origin_country: "Canada",
  birthday: "1990-05-12",
  gender: "female",
  profile_photo: "https://avatars3.githubusercontent.com/u/54211185?v=4"
)
  u12.save!

  u13 = User.new(
  full_name: "Santiago Sanchez",
  email: "Santiago@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "United States",
  origin_country: "United States",
  birthday: "1990-05-12",
  gender: "male",
  profile_photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/p4iist1ushdoafevllr7.jpg"
)
  u13.save!

  u14 = User.new(
  full_name: "Andy Baranov",
  email: "Andy@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Brazil",
  origin_country: "Peru",
  birthday: "1990-05-12",
  gender: "male",
  profile_photo: "https://avatars3.githubusercontent.com/u/12513436?v=4"
)
  u14.save!

  u15 = User.new(
  full_name: "Rich O'grady",
  email: "Rich@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Georgia",
  origin_country: "Greece",
  birthday: "1990-05-12",
  gender: "male",
  profile_photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/lmmcdeakg1co39u2lfzz.jpg"
)
  u15.save!

  u16 = User.new(
  full_name: "Dimitri Bosch",
  email: "Dimitri@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Portugal",
  origin_country: "Portugal",
  birthday: "1990-05-12",
  gender: "male",
  profile_photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/vewklncjschzufwaixd6.jpg"
)
  u16.save!

  u17 = User.new(
  full_name: "Claire Demont",
  email: "Claire@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Scotland",
  origin_country: "Ireland",
  birthday: "1990-05-12",
  gender: "female",
  profile_photo: "https://avatars3.githubusercontent.com/u/45850166?v=4"
)
  u17.save!

  u18 = User.new(
  full_name: "Saskia Menke",
  email: "Saskia@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Scotland",
  origin_country: "Ireland",
  birthday: "1990-05-12",
  gender: "female",
  profile_photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/lvabcqwvs77k4xmw6q2y.jpg"
)
  u18.save!

  u19 = User.new(
  full_name: "Grant Thomas",
  email: "Jonathon@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Norway",
  origin_country: "Canada",
  birthday: "1986-07-11",
  gender: "male",
  profile_photo: "https://avatars3.githubusercontent.com/u/48766845?v=4"
)
  u19.save!

  u20 = User.new(
  full_name: "Kaylin Bittner",
  email: "Kaylin@example.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Finland",
  origin_country: "United States",
  birthday: "1980-12-12",
  gender: "female",
  profile_photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/fv25t4aju8jj0bq8o5yw.jpg"
)
  u20.save!
# # 20.times do
#   u1 = User.new(
#   full_name: Faker::Name.name,
#   email: Faker::Internet.email,
#   encrypted_password: Faker::Internet.password,
#   password: "123456",
#   current_country: Faker::Address.country,
#   origin_country: Faker::Address.country,
#   birthday: Faker::Date.birthday(min_age: 18, max_age: 90),
#   gender: Faker::Gender.type,
#   profile_photo: photos.shuffle.pop
# )
users = [u1, u2, u3, u4, u5, u6, u7, u8, u9, u10, u11, u12, u13, u14, u15, u16, u17, u18, u19, u20]

puts "Creating 5 vibes..."

v1 = Vibe.create!(name: "Chill",
     :icon => "Icon_Chilled.png")
v2 = Vibe.create!(name: "Sophisticated",
     :icon => "Icon_Sophisticated.png")
v3 = Vibe.create!(name: "Party",
     :icon => "Icon_Party.png")
v5 = Vibe.create!(name: "Adventurous",
     :icon => "Icon_Adventure.png")
v4 = Vibe.create!(name: "Saucy",
     :icon => "Icon_Saucy.png")

puts 'Creating 10 languages'

10.times do
  language = Language.new(
    language:    Faker::ProgrammingLanguage.name,
    icon:   'https://image.flaticon.com/icons/svg/197/197593.svg',
  )
  language.save!
end


puts 'Creating 20 Events'

events = []

# 20.times do
#   event = Event.new(
#     title:  Faker::Restaurant.type,
#     address: Faker::Address.city,
#     description: Faker::Restaurant.description,
#     start_time: "#{Date.today}-#{["19:00","20:00"].shuffle.pop}",
#     user: users.shuffle.pop,
#     vibe: [v1, v2, v3, v4, v5].shuffle.pop,

  e1 = Event.new(
    title:  "Explore the German Market",
    address: "Skalitzer Str. 97",
    description: "Let's go explore a German a market. Get some good food and drinks while we do it.",
    start_time: "#{Date.today}- 16:00",
    user: u1,
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
    user: u2,
    vibe: v1,
    capacity: 6,
    photo: "https://clovereats.files.wordpress.com/2014/08/metzger-4.jpg",
  )
  e2.save!

  e3 = Event.new(
    title:  "Cocktail Night!",
    address: "Winterfeldtstraße 50, Berlin",
    description: "See where the night takes us after a few cocktiails.",
    start_time: "#{Date.today}- 20:30",
    user: u3,
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
    user: u4,
    vibe: v2,
    capacity: 6,
    photo: "https://pea-7f65.kxcdn.com/img/image_db/michelin_restaurants_in_rome-942.jpg",
  )
  e4.save!

  e5 = Event.new(
    title:  "Kit Kat - Let's Do it !",
    address: "Köpenicker Str. 76, 10179 Berlin",
    description: "You only live once. Let's go take on Kit Kat.",
    start_time: "#{Date.today}- 23:30",
    user: u5,
    vibe: v5,
    capacity: 6,
    photo: "https://i.pinimg.com/736x/74/12/d3/7412d387ecb00da630ca9026eabbd2e0.jpg",
  )
  e5.save!

  e6 = Event.new(
    title:  "Bier Garten",
    address: "Kastanienallee 7-910435 Berlin",
    description: "We have to go to at least one German Bier Garten. Come join me for a few biers.",
    start_time: "#{Date.today}- 16:30",
    user: u6,
    vibe: v5,
    capacity: 6,
    photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Hofbraeukeller_5906.JPG/1200px-Hofbraeukeller_5906.JPG",
  )
  e6.save!

  e7 = Event.new(
    title:  "Razzle Dazzle",
    address: "Am Flutgraben 2, 12435 Berlin, Germany",
    description: "Queer Roller disco at Festaal Kreuzberg. Let's Boogie!",
    start_time: "#{Date.today}- 22:00",
    user: u7,
    vibe: v4,
    capacity: 6,
    photo: "http://sk8s.biz/wp-content/uploads/2016/03/roller-disco.png",
  )
  e7.save!

  e8 = Event.new(
    title:  "The Doner Party",
    address: "Adalbertstraße 12, 10999 Berlin",
    description: "Found some really great doner yesterday. Want to get some tonight as well. Come eat and hang.",
    start_time: "#{Date.today}- 18:30",
    user: u8,
    vibe: v1,
    capacity: 6,
    photo: "http://www.istanbulfood.com/wp-content/uploads/2010/04/doner-2.jpg",
  )
  e8.save!

  e9 = Event.new(
    title:  "Drink Outside the Box",
    address: "Köpenicker Str. 70",
    description: "Let's go explore some clubs in Berlin.",
    start_time: "#{Date.today}- 19:00",
    user: u9,
    vibe: v3,
    capacity: 6,
    photo: "http://club54.ca/wp-content/uploads/2014/02/1ClubMay244.jpg",
  )
  e9.save!

  e10 = Event.new(
    title:  "Operatunity!",
    address: "Unter den Linden 7, 10117 Berlin",
    description: "I have two extra tickets to La Traviata! Happy to give them to you as I don't have any way to sell them.",
    start_time: "#{Date.today}- 16:00",
    user: u10,
    vibe: v3,
    capacity: 6,
    photo: "https://www.kevmrc.com/wp-content/uploads/2016/12/opera-garnier-paris-015.jpg",
  )
  e10.save!

  e11 = Event.new(
    title:  "Cool Daze",
    address: "An der Schillingbrücke 3, 10243 Berlin",
    description: "YAAM is a super famous music venue for African Artists. Tonight a great jazz band is on.",
    start_time: "#{Date.today}- 20:30",
    user: u11,
    vibe: v3,
    capacity: 6,
    photo: "http://awesomeberlin.net/wp-content/uploads/2016/06/yaam3.jpg",
  )
  e11.save!

  e12 = Event.new(
    title:  "Pinkies Up!",
    address: "Behrenstraße 47, 10117 Berlin",
    description: "Let's be the sophisticated wine tasters we were born to be.",
    start_time: "#{Date.today}- 17:30",
    user: u12,
    vibe: v2,
    capacity: 6,
    photo: "http://club54.ca/wp-content/uploads/2014/02/1ClubMay244.jpg",
  )
  e12.save!

  e13 = Event.new(
    title:  "Make Merry",
    address: "Voltairestraße 2A, 10179 Berlin",
    description: "I'd like to walk through some German christmas markets. Eat local foods. And just mosey around. Join me if you like.",
    start_time: "#{Date.today}- 16:00",
    user: u13,
    vibe: v1,
    capacity: 6,
    photo: "https://www.ebookers.com/travel-blog/wp-content/uploads/2016/11/Berlin.jpg",
  )
  e13.save!

  e14 = Event.new(
    title:  "Abandoned American Radio Towers",
    address: "Teufelsberg, 14055 Berlin",
    description: "The inner towers used to be open to the public. Let's jump the fence and climb up them.",
    start_time: "#{Date.today}- 19:30",
    user: u14,
    vibe: v5,
    capacity: 6,
    photo: "http://4.bp.blogspot.com/-VN6B54ZJsZo/VfCrb7_fwbI/AAAAAAAC0yI/cFYcU6p_TBI/s1600/Teufelsberg%2BAbandoned%2BBerlin%2BStreet%2BArt-9658.jpg",
  )
  e14.save!

  e15 = Event.new(
    title:  "Don't you Want Somebody to Love!",
    address: "Warschauer Str. 34, 10243 Berlin",
    description: "I haven't sung kareoke in ages, and I've got an itch I need to scratch. Come scratch your keroeke itch tonight!",
    start_time: "#{Date.today}- 21:00",
    user: u15,
    vibe: v4,
    capacity: 6,
    photo: "https://edge.alluremedia.com.au/m/l/2016/11/Karaoke.jpg",
  )
  e15.save!

  e16 = Event.new(
    title:  "Schnitzel",
    address: "Chausseestraße 8, 10115 Berlin",
    description: "I really want to try some good schnitzel. This place is supposed to be the best. Let's feed our souls some schnitzel.",
    start_time: "#{Date.today}- 18:30",
    user: u16,
    vibe: v2,
    capacity: 6,
    photo: "http://graphics8.nytimes.com/images/2014/10/10/multimedia/clark-schnitzel/clark-schnitzel-superJumbo.jpg",
  )
  e16.save!

  e17 = Event.new(
    title:  "Mazel Tov !",
    address: "Behrenstraße 55, 10117 Berlin",
    description: "Let's drink and make good conversation",
    start_time: "#{Date.today}- 18:00",
    user: u17,
    vibe: v1,
    capacity: 6,
    photo: "http://wayfaringrachel.com/wp-content/uploads/2015/08/szimpla.jpg",
  )
  e17.save!

  e18 = Event.new(
    title:  "Wilde!",
    address: "Alt-Stralau 70, 10245 Berlin",
    description: "I've heard the door at Renate is easy and the music is great.",
    start_time: "#{Date.today}- 20:30",
    user: u18,
    vibe: v3,
    capacity: 6,
    photo: "http://s3-media2.fl.yelpcdn.com/bphoto/rOH_IOeUp6e_5GJApiAayg/o.jpg",
  )
  e18.save!

  e19 = Event.new(
    title:  "Dance the Night Away!",
    address: "Falckensteinstraße 49, 10997 Berlin",
    description: "Let's go explore some clubs in Berlin.",
    start_time: "#{Date.today}- 21:20",
    user: u19,
    vibe: v3,
    capacity: 6,
    photo: "http://www.deephouseamsterdam.com/wp-content/uploads/2014/11/watergate-1.jpg",
  )
  e19.save!

  e20 = Event.new(
    title:  "Open Air Cinema",
    address: "Köpenicker Str. 70",
    description: "B-Movie playing. Don't want to miss it. Come along and we'll go out for drinks after.",
    start_time: "#{Date.today}- 22:00",
    user: u20,
    vibe: v5,
    capacity: 6,
    photo: "https://travelaway.me/wp-content/uploads/2016/05/kamari-cinema.jpg",
  )
  e20.save!


  events = [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14, e15, e16, e17, e18, e19, e20]

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

puts "Creating spots..."

  Spot.new(user: u2, event: e1).save!
  Spot.new(user: u3, event: e1).save!
  Spot.new(user: u4, event: e1).save!
  Spot.new(user: u5, event: e1).save!
  Spot.new(user: u6, event: e2).save!
  Spot.new(user: u7, event: e2).save!
  Spot.new(user: u8, event: e2).save!
  Spot.new(user: u9, event: e3).save!
  Spot.new(user: u10, event: e3).save!
  Spot.new(user: u11, event: e4).save!
  Spot.new(user: u12, event: e4).save!
  Spot.new(user: u13, event: e4).save!
  Spot.new(user: u14, event: e4).save!
  Spot.new(user: u15, event: e5).save!
  Spot.new(user: u16, event: e5).save!
  Spot.new(user: u17, event: e6).save!
  Spot.new(user: u18, event: e6).save!
  Spot.new(user: u19, event: e7).save!
  Spot.new(user: u20, event: e8).save!
  Spot.new(user: u1, event: e9).save!
  Spot.new(user: u2, event: e9).save!
  Spot.new(user: u3, event: e10).save!
  Spot.new(user: u4, event: e11).save!
  Spot.new(user: u5, event: e11).save!
  Spot.new(user: u6, event: e11).save!
  Spot.new(user: u6, event: e12).save!
  Spot.new(user: u8, event: e12).save!
  Spot.new(user: u9, event: e12).save!
  Spot.new(user: u10, event: e13).save!
  Spot.new(user: u11, event: e13).save!
  Spot.new(user: u12, event: e14).save!
  Spot.new(user: u13, event: e15).save!
  Spot.new(user: u14, event: e16).save!
  Spot.new(user: u15, event: e16).save!
  Spot.new(user: u16, event: e16).save!
  Spot.new(user: u17, event: e16).save!
  Spot.new(user: u18, event: e17).save!
  Spot.new(user: u19, event: e17).save!
  Spot.new(user: u20, event: e18).save!
  Spot.new(user: u20, event: e19).save!
  Spot.new(user: u18, event: e20).save!
  Spot.new(user: u17, event: e20).save!

# events.each do |event|
#   possible_attendants = users.reject { |u| u == event.user }
#   rand(1..5).times do
#     spot = Spot.new(
#       user: possible_attendants.shuffle.pop,
#       event: event
#     )

# puts "Creating random number of spots..."

# events.each do |event|
#   possible_attendants = users.reject! { |u| u == event.user }
#   rand(1..5).times do
#     spot = Spot.new(
#       user: possible_attendants.shuffle.pop,
#       event: event
#     )


    # possible_attendants = possible_attendants.reject {|u| u == spot.user }
#     spot.save!
# #   end
# end

puts "Created #{Spot.count} spots"


puts "Creating demo user..."
demo_user = User.new(
  full_name: "Jim",
  email: "jim@gmail.com",
  encrypted_password: Faker::Internet.password,
  password: "123456",
  current_country: "Germany",
  origin_country: "United Sates",
  birthday: "1992-03-25",
  gender: "Male",
  profile_photo: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/uyobqcjxteitwb314gea.jpg"
)
demo_user.save!

# review_user = User.new(
#   full_name: "Samantha Jones",
#   email: "sam@example.com",
#   encrypted_password: Faker::Internet.password,
#   password: "123456",
#   current_country: "Germany",
#   origin_country: "United Kingdom",
#   birthday: "1992-03-25",
#   gender: "Female",
#   profile_photo: "https://i.imgur.com/cDqspyH.png"
# )
# review_user.save!


puts "Created demo user 'jim@gmail.com' "
puts "Creating past events..."


# to_review1 = Event.new(
#     title:  "Cafe in Amsterdam?",
#     address: "Ten Katestraat 117, 1053 CC Amsterdam, Netherlands",
#     description: "This could be fun. I've never been. Let's check out a Cafe in Amsterdam and maybe get some food after.",
#     start_time: "#{Date.yesterday - 6}- 18:00",
#     user: users.sample,
#     vibe: v5,
#     capacity: 6,
#     photo: "https://mymodernmet.com/wp/wp-content/uploads/archive/4li2cFU3uEzpmBe39XJB_jimmychin4.jpg",
#   )
#   to_review1.save!

  to_review2 = Event.new(
    title:  "Budapest Beers",
    address: "Budapest, Dob u. 3, 1072 Hungary",
    description: "I always love a good beer, Budapest is known for its wines but let's check out some of it's up and coming craft beer scene.",
    start_time: "#{Date.yesterday - 4 }- 23:00",
    user: users.sample,
    vibe: v1,
    capacity: 6,
    photo: "https://www.techexplorist.com/wp-content/uploads/2017/01/Drinking-In-Pub-With-Friends-Is-Good-For-You.jpg",
  )
  to_review2.save!

    to_review3 = Event.new(
    title:  "Wine tasting",
    address: "Budapest, Dob u. 20, 1072 Hungary",
    description: "Let's class is up a bit and try out some fine Budapest wines.",
    start_time: "#{Date.yesterday - 2 }- 20:00",
    user: users.sample,
    vibe: v2,
    capacity: 6,
    photo: "https://blog.koelntourismus.de/wp-content/uploads/2018/02/Shepheards_Cocktail-Bars-in-Koeln-1030x685.jpg",
  )
  to_review3.save!

puts 'Created past events'

puts "Creating spots for demo user ..."
  # Spot.new(user: demo_user, event: to_review1).save!
  Spot.new(user: demo_user, event: to_review2).save!
  Spot.new(user: demo_user, event: to_review3).save!

puts "Created spots"

puts 'Creating hosted past event for user.'

    to_host = Event.new(
    title:  "Dublin Pub!",
    address: "8 Poolbeg St, Dublin, DO2TK71, Ireland",
    description: "Let's do what the locals do. In Dublin for a few days and would love to get a taste of the local pubs.",
    start_time: "#{Date.yesterday - 10 }- 20:00",
    user: demo_user,
    vibe: v1,
    capacity: 6,
    photo: "https://media.2oceansvibe.com/wp-content/uploads/2018/08/fitfhleedescompetition.jpg",
  )
    to_host.save!

puts 'Created past hosted event'


# puts "Creating nil reviews"

# 5.times do
#   nil_review = Review.new(
#     user: review_user,
#     event: [e1, e2, e3, e4, e5, e6, e7].sample,
#     )
#   nil_review.save!
# end

# puts 'Creating review seeds'


# 20.times do
#   review = Review.new(
#     user: users.sample,
#     event: [e1, e2, e3, e4, e5, e6, e7].sample,
#     vibe: rand(1..5),
#     venue: rand(1..5),
#     neighborhood: rand(1..5),
#     attended: [true, false].sample,
#     comment: Faker::Restaurant.review,
#     )
#   review.save!
# end
# puts 'Created reviews'

puts 'Finished!'

