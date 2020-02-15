class Item < ApplicationRecord
  # associations
  belongs_to    :user
  belongs_to    :shippingway
  belongs_to    :brand
  belongs_to    :category

  has_many      :itemimages

  has_one       :shipping
  has_one       :trade

end
