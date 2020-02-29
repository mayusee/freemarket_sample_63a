class Item < ApplicationRecord
  # associations
  belongs_to    :brand
  belongs_to    :category
  belongs_to    :product_size
  belongs_to    :shippingway, optional: true
  belongs_to    :buyer, class_name: "User", optional: true
  belongs_to    :buyer_address, class_name: "Address", optional: true
  belongs_to    :seller, class_name: "User"
  belongs_to    :seller_address, class_name: "Address"

  has_many      :item_images

end
