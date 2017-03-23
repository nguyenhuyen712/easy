class Category < ApplicationRecord
  has_many :restaurant_categories
  has_many :food_categories
  belongs_to :manager, class_name: "User"

  enum category_type: [:restaurant, :food]
  validates :name, presence: true, uniqueness: {scope: :category_type}
end
