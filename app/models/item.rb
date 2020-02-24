class Item < ApplicationRecord
  # associations
  belongs_to    :brand
  belongs_to    :category
  belongs_to    :shippingway
  belongs_to    :buyer, class_name: "User"
  belongs_to    :seller, class_name: "User"

  has_many      :item_images

  has_one       :shipping

end
