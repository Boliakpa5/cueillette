class Product < ApplicationRecord
  CATEGORIES = ["Fruit", "Légume", "Viande", "Boisson", "Poisson"]
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :title, :price, :category, :user, presence: true
  validates :price, numericality: true
  validates :category, inclusion: { in: CATEGORIES }

  include PgSearch::Model
  pg_search_scope :search_by_tag,
  against: [:category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
