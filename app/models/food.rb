class Food < ApplicationRecord
  has_many :images, as: :imageable
  has_many :promotion_details, dependent: :destroy
  has_many :bill_details
  belongs_to :category
  belongs_to :restaurant

  enum status: [:sell, :sold]

  scope :filter_category, ->(category_id){where category_id: category_id}
end
