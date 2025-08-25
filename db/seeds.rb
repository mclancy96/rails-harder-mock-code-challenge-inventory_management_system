# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Author.destroy_all
Post.destroy_all
Product.destroy_all
Warehouse.destroy_all
InventoryTransaction.destroy_all

authors = [
  "Jane Austen",
  "Mark Twain",
  "Virginia Woolf",
  "James Baldwin",
  "Toni Morrison",
  "George Orwell"
]

posts = [
  "The Art of Writing",
  "Reflections on Society",
  "A Journey Through Time",
  "On the Power of Words",
  "Memoirs of a Novelist",
  "The Future of Literature"
]

products = Product.create!([
  { name: "Widget", sku: "WGT-001" },
  { name: "Gadget", sku: "GDT-002" },
  { name: "Thingamajig", sku: "THG-003" }
])

warehouses = Warehouse.create!([
  { name: "Main Warehouse", location: "123 Main St" },
  { name: "Secondary Warehouse", location: "456 Side Ave" }
])

InventoryTransaction.create!([
  { product: products[0], warehouse: warehouses[0], transaction_type: :stock_in, quantity: 100, transaction_date: Time.now - 7.days },
  { product: products[1], warehouse: warehouses[0], transaction_type: :stock_in, quantity: 50, transaction_date: Time.now - 6.days },
  { product: products[2], warehouse: warehouses[1], transaction_type: :stock_in, quantity: 75, transaction_date: Time.now - 5.days },
  { product: products[0], warehouse: warehouses[0], transaction_type: :stock_out, quantity: 10, transaction_date: Time.now - 2.days },
  { product: products[1], warehouse: warehouses[1], transaction_type: :transfer, quantity: 20, transaction_date: Time.now - 1.day }
])

authors.each do |author|
  Author.create(name: author)
end

posts.each do |post|
  Post.create(title: post)
end
