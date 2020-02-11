class Shipping < ApplicationRecord
  belongs_to :user
  belongs_to :area
  belongs_to :shippingway
end
