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

100.times do |i|
  Category.create name: "category #{i+1}", category_type: :food
end

User.create email: "nguyenmyhuyen@gmail.com",
  password: 123456,
  password_confirmation: 123456,
  phone: "0123456789",
  address: "Ha noi",
  name: "Nguyễn Mỹ Huền",
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
