# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "000"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number: "000"}
sushi_ro =  {name: "Sushiro", address: "Tokyo", category: "chinese", phone_number: "000"}
kfc =  {name: "KFC", address: "Tokyo" , category: "chinese", phone_number: "000"}
abc = {name: "ABC", address: "Tokyo", category: "chinese", phone_number: "000"}

[dishoom, pizza_east, sushi_ro, kfc, abc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
