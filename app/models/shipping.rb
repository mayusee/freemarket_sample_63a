class Shipping < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :shippingway
  belongs_to :address

  has_one    :item
end
