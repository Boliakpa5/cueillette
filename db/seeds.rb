# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

5.times {
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.street_name, email: Faker::Internet.email, password: "1234567182763", is_market: true, market_name: Faker::Company.name)
}

5.times {
  product = Product.create(title: Faker::Cannabis.cannabinoid, price: rand(0...100), category: ["Légume", "Boisson"].sample, user: User.all.sample)
}
