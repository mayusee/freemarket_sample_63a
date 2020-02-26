class Item < ApplicationRecord
  # associations
  belongs_to    :brand
  belongs_to    :category
  belongs_to    :shippingway
  belongs_to    :user
  has_many :item_images, dependent: :destroy
  accepts_nested_attributes_for      :item_images, allow_destroy: true

  has_one       :shipping
  has_one       :trade

end
