# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create! id: 1, name: "10$", price: 350, image: "psn10us.jpg", category: "Sony", active: true
Product.create! id: 2, name: "20$", price: 700, image: "psn20us.jpg", category: "Sony", active: true
Product.create! id: 3, name: "50$", price: 1750, image: "psn50us.jpg", category: "Sony", active: true
Product.create! id: 4, name: "60$", price: 2100, image: "psn60us.jpg", category: "Sony", active: true
Product.create! id: 5, name: "75$", price: 2625, image: "psn75us.jpg", category: "Sony", active: true
Product.create! id: 6, name: "100$", price: 3500, image: "psn100us.jpg", category: "Sony", active: true


OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"