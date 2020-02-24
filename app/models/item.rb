class Item < ApplicationRecord
  # associations
  belongs_to    :brand
  belongs_to    :category
  belongs_to    :shippingway
  belongs_to    :user

  has_many      :item_images

  has_one       :shipping
  has_one       :trade


  
end
