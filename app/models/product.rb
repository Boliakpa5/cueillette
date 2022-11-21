class Product < ApplicationRecord
  CATEGORIES = ["légume, boisson"]
  belongs_to :user

  validates :title, :price, :category, :user_id, presence: true
  validates :price, numericality: true
  validates :category, inclusion: { in: CATEGORIES }
end
