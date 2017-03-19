class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :comments, dependent: :destroy
  has_many :favorite_restaurants, dependent: :destroy
  has_one :restaurant

  validates :email, presence: true, length: {maximum: 128}
  validates :name, presence: true, length: {maximum: 128}
  validates :address, presence: true, length: {maximum: 128}
  validates :phone, format: {with: /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/}
end
