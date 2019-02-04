FactoryBot.define do

  factory :user do
    f_name { Faker::Name.first_name }
    l_name { Faker::Name.last_name }
    descrip { Faker::Hacker.say_something_smart }
    email { Faker::Internet.email }
    age { Faker::Number.number(70)   }
    city { FactoryBot.create(:city) }
  end
  
end