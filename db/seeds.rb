# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::Creature::Cat.name,
        date_available: Faker::Date.between(from: 90.days.ago, to: Date.today),
        animal_type: Faker::Creature::Cat.breed,
        sex: Faker::Gender.binary_type,
        color: Faker::Color.color_name,
        age: Faker::Number.between(from: 1, to: 15),
        weight: Faker::Number.between(from: 2, to: 22),
        location: Faker::Space.constellation,
        kennel: Faker::Number.between(from: 1, to: 45),
        profile: Faker::Lorem.sentence,
        picture: Faker::LoremPixel.image(size: "50x60", is_gray: false, category: 'cats')
      )
      puts "Cat #{i}: Cat is #{animal.name}. Available as of  #{animal.date_available}. Breed: #{animal.animal_type}. Sex: #{animal.sex}. Color: #{animal.color} Age: #{animal.age} years. Weight: #{animal.weight} pounds. Location: #{animal.location} wing. Kennel: #{animal.kennel} . Profile: #{animal.profile} Picture: #{animal.picture} ."

    end
  end

end

Seed.begin
