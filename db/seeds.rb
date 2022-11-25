# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'faker'

p "Destroying things..."
Order.destroy_all
Product.destroy_all
User.destroy_all

p "Creating users..."
user = User.create(address: "Kervihan, 29700 Pluguffan", market_name: "La Ferme de Kervihan", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/andre.png')), filename: 'andre')
user = User.create(address: "41 Hent Alexandre Masse, 29700 Plomelin", market_name: "Legumaj Kergwenn", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/arthur.png')), filename: 'arthur')
user = User.create(address: "15 Chem. de Kermadec, 29000 Quimper", market_name: "Quintin Annick", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/bernard.png')), filename: 'bernard')
p "working on it..."
user = User.create(address: "271 Rte de Guengat, 29000 Quimper", market_name: "Les Maraichers De La Coudraie", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/christophe.jpg')), filename: 'christophe')
user = User.create(address: "Kerlou Bras, 29140 Saint-Yvi", market_name: "La ferme de Kerlou", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/eddy.png')), filename: 'eddy')
user = User.create(address: "Guernalay, 29940 La Forêt-Fouesnant", market_name: "La Ferme de Guernalay", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/etienne.png')), filename: 'etienne')
user = User.create(address: "57 Chem. de Kernivinan, 29000 Quimper", market_name: "Le Berre Pascal", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/francois.png')), filename: 'francois')
user = User.create(address: "32 Rte de Perguet, 29170 Fouesnant", market_name: "La Cidrerie Maison de Perguet", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/joseph.png')), filename: 'joseph')
user = User.create(address: "12 Hent Kermao, 29950 Gouesnach", market_name: "LES VERGERS DE KERMAO", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/michel.jpg')), filename: 'michel')
p "patience..."
user = User.create(address: "54 Hent Carbon, 29170 Fouesnant", market_name: "Cidrerie de Menez Brug", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/michou.jpg')), filename: 'michou')
user = User.create(address: "29700 Plomelin", market_name: "Vergers Pen Allée", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/rene.png')), filename: 'rene')
user = User.create(address: "29120 Pont-l'Abbé", market_name: "Le Potager de Xavier", is_market: true, first_name: "Xavier", last_name: "Ker Kardellac", phone_number: Faker::PhoneNumber.cell_phone, email: "xavier@gmail.com", password: "coucou")
user.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/xavier.png')), filename: 'xavier')

User.where.not(first_name: "Xavier").each do |i|
  p "Adding products to user #{i.first_name}..."
  3.times {
    Product.create(title: Faker::Food.vegetables, price: rand(0...10), category: "Légume", user: i)
    Product.create(title: Faker::Food.fruits, price: rand(0...10), category: "Fruit", user: i)
    Product.create(title: Faker::Creature::Animal.name, price: rand(0...10), category: "Viande", user: i)
    Product.create(title: Faker::Tea.variety, price: rand(0...10), category: "Boisson", user: i)
    Product.create(title: Faker::Food.sushi, price: rand(0...10), category: "Poisson", user: i)
  }
  rand(10..14).times { Product.where(user: i).sample.destroy }
end

User.where(first_name: "Xavier").each do |i|
  p "Adding products our boy Xavier..."
  Product.create(title: "Courgette", price: 2.5, category: "Légume", user: i)
  Product.create(title: "Pommes", price: 3, category: "Fruit", user: i)
  Product.create(title: "Poulet", price: 8, category: "Viande", user: i)
  Product.create(title: "Limonade", price: 1, category: "Boisson", user: i)
  Product.create(title: "Truite", price: 5, category: "Poisson", user: i)
end

p "Creating orders for xavier...."
3.times { Order.create(user: User.where.not(first_name: "Xavier").sample, product: User.last.products.sample, pickup_date: Date.today) }

p "Done! Don't forget to run rails s ;)"
