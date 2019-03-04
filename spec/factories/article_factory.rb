FactoryBot.define do
  factory :article do
    title { 'Test article' }
    description { 'article for testing' }
    price { 300 }
    category { create(:category) }
  end
end
