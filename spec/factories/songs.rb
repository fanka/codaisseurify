FactoryGirl.define do
  factory :song do
    name { Faker::Superhero.name }
    lyrics {Faker::Lorem.paragraph(4)}
  end
end
