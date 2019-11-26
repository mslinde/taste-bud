require 'faker'

puts "Clearing Database of events.."
Event.destroy_all
User.destroy_all
Vibe.destroy_all

user = User.create!(full_name:"Name", email:"test@example.com", password:"123456")
vibe = Vibe.create!(name:"Chill")

puts "Creating 20 fake events..."

20.times do
  event = Event.new(
    title:  Faker::Restaurant.type ,
    address: Faker::Address.city,
    description: Faker::Restaurant.description,
    start_time: "#{Date.today}-#{["19:00","20:00"].sample}",
    user: user, # User.find(rand(1..20))
    vibe: vibe,
  )
  event.save!
end
puts 'Finished!'
