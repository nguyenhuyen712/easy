# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create email: "admin@gmail.com", password: 123456, password_confirmation: 123456

10.times do |i|
  category = Category.create name: "category #{i+1}", category_type: :restaurant
  9.times do |j|
    Restaurant.create name: "restaurant #{i}#{j+1}",
      code: "R#{i}#{j+1}",
      address: Faker::Address.street_address,
      phone: Faker::PhoneNumber.cell_phone,
      open_time: "08:00",
      close_time: "20:00",
      url_avatar: Faker::Avatar.image,
      status: "opening",
      order_count: "#{i*10 + j}"
  end
end

# 100.times do |i|
#   Category.create name: "category #{i+1}", category_type: :food
# end
