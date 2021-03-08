FactoryBot.define do
  factory :event do
    id { 1 }
    description { "MyText" }
    date { "2021-03-08" }
    created_at { "2021-03-08 15:39:46" }
    updated_at { "2021-03-08 15:39:46" }
    creator_id { 1 }
  end
end
