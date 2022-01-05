puts "creating roles..."

5.times{Role.create(character_name: Faker::Name.name)}

puts "creating auditions..."

25.times{Audition.create(role_id:rand(1..5), actor: Faker::Name.name, location: Faker::Address.city, hired: false, phone: 9999999999)}
