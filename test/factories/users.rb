FactoryBot.define do
  factory :user do
    first_name
    last_name
    password
    email

    factory :admin do
      #type { 'admin' }
      first_name { generate :string }
      last_name { generate :string }
      email
      password {generate :string }
    end

    factory :manager do
      type { 'manager' }
    end

    factory :developer do
      type { 'Developer' }
    end
  end
end
