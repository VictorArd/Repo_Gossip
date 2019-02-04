FactoryBot.define do

  factory :potin do
    title { Faker::App.name }
    content { Faker::App.author }
    user { FactoryBot.create(:user) }
  end
  
end