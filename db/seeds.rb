# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

2.times do
  @c = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip)

end
p "Création de villes"

5.times do
  @u = User.create(f_name: Faker::Name.first_name, l_name: Faker::Name.middle_name, descrip: Faker::Music.album, email: Faker::Internet.email, age: Faker::Date.birthday(min_age = 18, max_age = 65), city: @c)
end
p "Création de users"

3.times do
  @p = Potin.create(title: Faker::Job.title, content: Faker::Pokemon.name, user: @u)
end
p "Création de potins"

2.times do
  t = Tag.create(title: Faker::Job.title, potin: @p)
end
p "Création de tags"
