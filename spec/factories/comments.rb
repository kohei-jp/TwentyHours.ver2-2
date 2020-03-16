FactoryBot.define do
  factory :comment do
    text                  {"test"}
    user
    tweet
  end
end