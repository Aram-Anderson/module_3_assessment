FactoryBot.define do
  factory :item do
    sequence :name do |n|
      "#{n}thing"
    end
    description LiterateRandomizer.sentence
    image_url "https://robohash.org/68.186.255.198.png"
  end
end
