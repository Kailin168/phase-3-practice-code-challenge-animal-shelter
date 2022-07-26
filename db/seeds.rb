require "faker"

puts "seeding..."

10.times do
  Shelter.create!(
    name: Faker::Company.name,
    address: Faker::Address.full_address
  )
end

10.times do
  Adopter.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end


# do the join table last cuz you need the two top table to give the information to use for the bottom


Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "cat",
    adopted?: true,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "cat",
    adopted?: false,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "dog",
    adopted?: true,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "dog",
    adopted?: false,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "dog",
    adopted?: true,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "cat",
    adopted?: false,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "cat",
    adopted?: false,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "dog",
    adopted?: true,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "dog",
    adopted?: false,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: rand(1..15),
    species: "dog",
    adopted?: true,
    shelter_id: rand(1..10),
    adopter_id: rand(1..10)
  )

#farm:Fram.all.sample (this is random generated)
puts "done!"
