FactoryBot.define do
  factory :event do
    id { 1 }
    description { "MyText" }
    date { "2021-03-10" }
    created_at { "2021-03-10 08:43:21" }
    updated_at { "2021-03-10 08:43:21" }
    creator_id { 1 }
  end
end
