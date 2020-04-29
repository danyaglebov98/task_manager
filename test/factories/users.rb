FactoryBot.define do
  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    password { "password" }
    type { "MyString" }

    sequence :email do |n|
      "email#{n}@example.com"
    end

    avatar { "MyString" }

    trait :admin do
      type { "admin" }
    end

    trait :manager do
      type { "manager" }
    end

    trait :developer do
      type { "developer" }
    end
  end
end
