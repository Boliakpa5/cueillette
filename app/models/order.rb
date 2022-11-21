class Order < ApplicationRecord
  belongs_to :status
  belongs_to :product
end
