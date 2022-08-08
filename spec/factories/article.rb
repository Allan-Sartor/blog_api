FactoryBot.define do
  factory :article do
    title { FFaker::Book.title }
    body { FFaker::Tweet.body }
    slug { slugify }
  end
end