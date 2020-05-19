FactoryBot.define do
  factory :task do
    name
    description

    association :author, factory: :manager
    association :assignee, factory: :developer

    trait :time do
      expired_at { Time.now }
    end
  end
end
