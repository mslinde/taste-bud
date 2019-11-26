require 'faker'

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

user = User.create!(full_name:"Name", email:"test@example.com", password:"123456")

puts 'Creating 20 Events'

20.times do
  event = Event.new(
    title:  Faker::Restaurant.type ,
    address: Faker::Address.city,
    description: Faker::Restaurant.description,
    start_time: "#{Date.today}-#{["19:00","20:00"].sample}",
    user: user, # User.find(rand(1..20))
    vibe: [v1, v2, v3, v4, v5].sample,
  )
  event.save!
end

puts 'Finished!'
