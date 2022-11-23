class Order < ApplicationRecord
  STATUS = ["pending", "reserved", "collected"]
  belongs_to :user
  belongs_to :product

  validates :user, :product, :pickup_date, presence: true
end
