class Shipping < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :area
  belongs_to :item
  belongs_to :shippingway
end
