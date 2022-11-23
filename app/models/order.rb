class Order < ApplicationRecord
  STATUS = ["pending", "reserved", "collected"]
  belongs_to :user
  belongs_to :product

  validates :user, :product, :pickup_date, presence: true
  validate :pickup_date_cannot_be_in_the_past

  def pickup_date_cannot_be_in_the_past
    if pickup_date.present? && pickup_date < Date.today
      errors.add(:pickup_date, "not valid, you are a petit malin, but we pensed à tout")
    end
  end
end
