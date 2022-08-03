FactoryBot.define do
  factory :review do
    title { FFaker::Book.title }
    description { FFaker::Book.description }
    score { rand 1..5 }
  end
end