FactoryBot.define do
  factory :task do
    name 
    description
    state

    author_id { }
    assignee_id { } 

    expired_at { '2020-04-27' }
  
    trait :with_author do
      author_id { create(:user, :admin) }
    end

    trait :with_assignee do
      assignee_id { create(:user, :manager) }
    end
  end
end
