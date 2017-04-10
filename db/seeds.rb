Admin.create email: "admin@gmail.com", password: 123456, password_confirmation: 123456

10.times do |i|
  Category.create name: "category-food #{i+1}", category_type: :food
end

10.times do |i|
  category = Category.create name: "category #{i+1}", category_type: :restaurant
  9.times do |j|
    restaurant = Restaurant.create name: "restaurant #{i}#{j+1}",
      address: Faker::Address.street_address,
      phone: Faker::PhoneNumber.cell_phone,
      open_time: "08:00",
      close_time: "20:00",
      url_avatar: Faker::Avatar.image,
      status: ["pending", "opening"].sample,
      order_count: "#{i*10 + j}",
      description: Faker::Hipster.paragraph(3, true),
      min_order: 50000,
      min_price: 20000,
      max_price: 100000,
      delivery_fee: 5000
    10.times do |f|
      Food.create name: "Food #{i} #{f+1}",
        price: 20000,
        restaurant_id: restaurant.id,
        status: "sell",
        url_avatar: Faker::Avatar.image,
        category_id: Category.food.sample.id
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

dat = User.create email: "dogiadat@gmail.com",
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

restaurant = Restaurant.create name: "My restaurant", manager_id: dat.id, address: "Keangnam, Hà Nội, Việt Nam", lat: 21.0170303, long: 105.7839017,
  phone: "0987964276", email: "dogiadat@gmail.com", min_price: 30000, max_price: 300000,
  delivery_fee: 5000, open_time: "07:30", close_time: "20:30", status: :opening,
  url_avatar: File.open(File.join(Rails.root, "app/assets/images/images/15.jpg"))
RestaurantCategory.create restaurant_id: restaurant.id, category_id: Category.first.id
RestaurantCategory.create restaurant_id: restaurant.id, category_id: Category.last.id
restaurant.foods.create price: 25000, name: "Món ăn 1", url_avatar: File.open(File.join(Rails.root, "app/assets/images/images/20.jpg")), category_id: Category.first.id
restaurant.foods.create price: 30000, name: "Món ăn 2", url_avatar: File.open(File.join(Rails.root, "app/assets/images/images/22.jpg")), category_id: Category.last.id
