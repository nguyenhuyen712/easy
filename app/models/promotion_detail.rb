class PromotionDetail < ApplicationRecord
  belongs_to :promotion
  belongs_to :food
end
