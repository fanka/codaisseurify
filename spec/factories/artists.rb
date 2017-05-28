FactoryGirl.define do
  factory :artist do
    name { Faker::RockBand.name }
    image_url { Faker::Avatar.image("my-own-slug", "300x400") }
  end
end
