FactoryBot.define do
  factory :user do
    first_name 
    last_name 
    
    sequence :email do |n| 
      "email#{n}@example.com"
    end
    
    password {'password'}

    trait :admin do
      type { 'admin' }
    end

    trait :manager do
      type { 'manager' }
    end

    trait :developer do
      type { 'developer' }
    end
  end
end
