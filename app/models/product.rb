class Product < ApplicationRecord
  CATEGORIES = ["Légume", "Boisson"]
  belongs_to :user
  has_many :orders

  validates :title, :price, :category, :user, presence: true
  validates :price, numericality: true
  validates :category, inclusion: { in: CATEGORIES }
end
