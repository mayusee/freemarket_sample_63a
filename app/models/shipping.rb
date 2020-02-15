class Shipping < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :area
  belongs_to :shippingway

  has_one    :item
end
