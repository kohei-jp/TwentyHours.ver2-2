FactoryBot.define do
  factory :tweet do
    text { "hello!" }
    image { "hoge.png" }
    time { "1.0" }
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
    tag
  end
end
