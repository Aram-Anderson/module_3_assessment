FactoryBot.define do
  factory :order_item do
    association :item
    association :order
  end
end
