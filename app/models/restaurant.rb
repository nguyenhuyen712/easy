class Restaurant < ApplicationRecord
  has_many :images, as: :imageable
  has_many :favorite_restaurants, dependent: :destroy
  has_many :promotions, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :restaurant_categories, dependent: :destroy
  has_many :bills
  belongs_to :slideshow
  belongs_to :manager, class_name: "User"

  enum status: [:opening, :closed]

  scope :hot_restaurant, ->{order order_count: :desc}
  scope :order_desc, ->{order created_at: :desc}
end
