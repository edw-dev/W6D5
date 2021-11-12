# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
5.times do 
    name = Faker::Food.fruits
    date = Faker::Date.birthday(min_age: 0, max_age: 65)
    color = "purple"
    sex = "F"
    desc = []
    desc << "once owned by: "
    desc << Faker::Name.name
    desc = desc.join("")
    Cat.create(birth_date: date, color: color, name: name, sex: sex, description: desc )
end