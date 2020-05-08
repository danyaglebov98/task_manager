FactoryBot.define do
  factory :user do
    first_name 
    last_name 
    password
    email

    factory :admin do
      type { 'admin' }
    end

    factory :manager do
      type { 'manager' }
    end

    factory :developer do
      type { "Developer" }
    end
  end
end

