Admin.create email: "admin@gmail.com", password: 123456, password_confirmation: 123456

10.times do |i|
  category = Category.create name: "category #{i+1}", category_type: :restaurant
  9.times do |j|
    restaurant = Restaurant.create name: "restaurant #{i}#{j+1}",
      address: Faker::Address.street_address,
      phone: Faker::PhoneNumber.cell_phone,
      open_time: "08:00",
      close_time: "20:00",
      url_avatar: Faker::Avatar.image,
      status: "opening",
      order_count: "#{i*10 + j}",
      description: Faker::Hipster.paragraph(3, true),
      min_order: 50000,
      min_price: 20000,
      max_price: 100000
    10.times do |f|
      category = Category.create name: "category-food #{f+1}", category_type: :food
      Food.create name: "Food #{f+1}",
        price: 20000,
        restaurant_id: restaurant.id,
        status: "sell",
        url_avatar: Faker::Avatar.image,
        category_id: category.id
    end
  end
end



User.create email: "nguyenmyhuyen@gmail.com",
  password: 123456,
  password_confirmation: 123456,
  phone: "0123456789",
  address: "Ha noi",
  name: "Nguyễn Mỹ Huyền",
  confirmed_at: Time.now

User.create email: "dogiadat@gmail.com",
  password: 123456,
  password_confirmation: 123456,
  phone: "0123456789",
  address: "Ha noi",
  name: "Đỗ Gia Đạt",
  confirmed_at: Time.now

User.create email: "dohongson@gmail.com",
  password: 123456,
  password_confirmation: 123456,
  phone: "0123456789",
  address: "Ha noi",
  name: "Đỗ Hồng Sơn",
  confirmed_at: Time.now
