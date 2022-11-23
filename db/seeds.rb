# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
require 'faker'

Order.destroy_all
Product.destroy_all
User.destroy_all

User.create(address: "Kervihan, 29700 Pluguffan", market_name: "La Ferme de Kervihan", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "41 Hent Alexandre Masse, 29700 Plomelin", market_name: "Legumaj Kergwenn", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "15 Chem. de Kermadec, 29000 Quimper", market_name: "Quintin Annick", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "271 Rte de Guengat, 29000 Quimper", market_name: "Les Maraichers De La Coudraie", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "Kerlou Bras, 29140 Saint-Yvi", market_name: "La ferme de Kerlou", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "Guernalay, 29940 La Forêt-Fouesnant", market_name: "La Ferme de Guernalay", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "57 Chem. de Kernivinan, 29000 Quimper", market_name: "Le Berre Pascal", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "32 Rte de Perguet, 29170 Fouesnant", market_name: "La Cidrerie Maison de Perguet", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "12 Hent Kermao, 29950 Gouesnach", market_name: "LES VERGERS DE KERMAO", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "54 Hent Carbon, 29170 Fouesnant", market_name: "Cidrerie de Menez Brug", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "29700 Plomelin", market_name: "Vergers Pen Allée", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "29120 Pont-l'Abbé", market_name: "Gaec du Pouldon", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "Rte de Kerist, 29940 La Forêt-Fouesnant", market_name: "Les Viviers de la Forêt", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "Place Jean Jaurès Les Halles, 29900 Concarneau", market_name: "Huîtres Morvan", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "Kerlagadec, 29750 Loctudy", market_name: "BOEUF ANGUS de Loctudy", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")
User.create(address: "Kerautret, 29120 Tréméoc", market_name: "La Ferme De Kérautret", is_market: true, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.cell_phone, email: Faker::Internet.email, password: "1234567182763")

User.all.each do |i|
  Product.create(title: Faker::Food.vegetables, price: rand(0...100), category: ["Fruit", "Vegetable", "Meat", "Dairy", "Drink", "Fish"].sample, user: i)
end
