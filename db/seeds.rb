Pet.delete_all

20.times do
  Pet.create!(name: Faker::Creature::Dog.name, address: Faker::Address.city, found_on: Faker::Date.between(2.days.ago, Date.today), species: %w(dog cat rabbit ferret).sample, healthiness: ["healthy", "unhealthy"].sample )
end


puts "Created #{Pet.count} pets"
