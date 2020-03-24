FactoryBot.define do
  factory :user do
    name                  { "test" }
    password              { "aaaa0000" }
    password_confirmation { "aaaa0000" }
    sequence(:email) { Faker::Internet.email }
  end
end
