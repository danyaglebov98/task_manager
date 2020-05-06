FactoryBot.define do 
  sequence :string, aliases: [:name, :description, :state, :first_name, :last_name] do |n| 
    "MyString#{n}"
  end
end
