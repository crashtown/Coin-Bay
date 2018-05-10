# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all

Category.create!([{
  name: "Goods"
},
{
  name: "Services"
}])

p "Created #{Category.count} categories"

Shipping.destroy_all

Shipping.create!([{
  name: "AusPost Express"
},
{
  name: "AusPost Registered"
},
{
  name: "Digital Only"
},
{
  name: "Pickup Only"
}])

p "Created #{Shipping.count} shipping types"

Btcprice.destroy_all

Btcprice.create!([{
  price: "0"
}])

p "Created #{Btcprice.count} price"
