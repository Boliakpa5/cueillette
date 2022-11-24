class Product < ApplicationRecord
  CATEGORIES = ["Fruit", "Légume", "Viande", "Boisson", "Poisson"]
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :title, :price, :category, :user, presence: true
  validates :price, numericality: true
  validates :category, inclusion: { in: CATEGORIES }
end
