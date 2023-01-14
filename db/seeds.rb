require 'faker'

puts "Seeding..."

8.times do 
    Actor.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name  
    )
end

20.times do
    Character.create(
        name: Faker::Name.name,
        actor_id: rand(1..8),
        show_id: rand(1..30),
        catchphrase: Faker::Quote.yoda
    )
end

30.times do
    Show.create(
        name: Faker::Book.title, 
        day: Faker::Time.forward(days: 365, period: :all), 
        season: "Winter",
        genre: Faker::Music.genre,
        network_id: rand(1..5)
    )
end


Network.create(call_letters: "NBC", channel: 5)
Network.create(call_letters: "ABC", channel: 35)
Network.create(call_letters: "CBS", channel: 8)
Network.create(call_letters: "PBS", channel: 6)
Network.create(call_letters: "FOX", channel: 13)



puts "Done seeding!"