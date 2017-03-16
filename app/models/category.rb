class Category < ApplicationRecord
  has_many :restaurant_categories,
  has_many :food_categories
end
