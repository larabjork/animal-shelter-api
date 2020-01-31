FactoryBot.define do

  factory :animal, class: Animal do
    name { Faker::Creature::Cat.name }
    date_available { Faker::Date.between(from: 90.days.ago, to: Date.today) }
    breed { Faker::Creature::Cat.breed }
    sex { Faker::Gender.binary_type }
    color { Faker::Color.color_name }
    age { 12 }
    weight { 12 }
    location { Faker::Space.constellation }
    kennel { 42 }
    profile { Faker::Lorem.sentence }
    picture { Faker::LoremPixel.image }
  end

  factory :sponsor, class: Sponsor do
    sponsor_name { Faker::Name.name }
  end
  
end
