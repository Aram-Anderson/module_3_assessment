FactoryBot.define do
  factory :order do
    amount Faker::Number.decimal(2)
    association :user
  end
end
