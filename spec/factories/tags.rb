FactoryBot.define do

  factory :tag do
    title { Faker::Movie.quote }
    potin { FactoryBot.create(:potin) }
  end
  
end