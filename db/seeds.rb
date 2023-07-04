# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Festival.create([
  { name: 'numbershot' },
  { name: 'WILDBUNCH' },
])

User.create!(name: "武山蓮",
    email: "ren.takeyama.1211@gmail.com",
    password:  "111111",
    password_confirmation: "111111",
    admin: true)