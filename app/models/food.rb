class Food < ApplicationRecord
  has_many :images, as: :imageable
  has_many :promotion_details, dependent: :destroy
  has_many :bill_details
  has_many :food_categories
  belongs_to :restaurant
end
