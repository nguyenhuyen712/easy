class Promotion < ApplicationRecord
  has_many :promotion_details
  belongs_to :restaurant
end
