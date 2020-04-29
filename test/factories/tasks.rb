FactoryBot.define do
  factory :task do
    name { "MyString" }
    
    sequence :description do |n|
      "MyString#{n}"
    end

    author_id { }
    assignee_id { } 
    state { "MyString" }
    expired_at { "2020-04-27" }
  
    trait :for_author do
      for_author { create(:user, :admin) }
    end

    trait :for_assignee do
      for_assignee { create(:user, :manager) }
    end
  end
end
