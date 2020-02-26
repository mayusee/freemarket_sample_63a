class Item < ApplicationRecord
  # associations
  belongs_to    :brand
  belongs_to    :category
  belongs_to    :shippingway
  
  belongs_to    :user
  has_many :item_images, dependent: :destroy
  accepts_nested_attributes_for      :item_images, allow_destroy: true

  belongs_to    :buyer, class_name: "User", optional: true
  belongs_to    :seller, class_name: "User"



  has_one       :shipping

end
