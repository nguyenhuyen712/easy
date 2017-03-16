class FoodCategory < ApplicationRecord
  belongs_to :categories
  belongs_to :food
end
