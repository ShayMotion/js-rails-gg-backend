# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create(name: "Shayan", username: "shaymotion", password: "password")

Auction.create(title: "Shayan's Auction", start_date: "10102020", end_date: "01022020")

Guitar.create(brand: "Gibson", model: "Les Paul", year: "1969", price: "20000")
