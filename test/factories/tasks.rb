FactoryBot.define do
  factory :task do
    name 
    description
    state

    author_id {}
    assignee_id {} 

    expired_at { '2020-04-27' }
  end
end
