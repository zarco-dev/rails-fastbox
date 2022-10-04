# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "LukFaker::Name.first_namee", movie: movies.first)
User.destroy_all
Service.destroy_all

# 10.times do
#   User.create(
#     username: Faker::Name.first_name,
#     email: Faker::Internet.email,
#     password: "123456",
#     user_type: 'personal'
#   )
# end

# 10.times do
#   Service.create(
#     payment_method: ['Tarjeta', 'Contra-entrega'].sample,
#     pickup_address: Faker::Address.street_address,
#     deliver_address: Faker::Address.street_address,
#     user_id: (1..10).to_a.sample
#   )
# end
