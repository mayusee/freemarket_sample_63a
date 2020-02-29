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

  enum condition_num:{ brand_new: 0, near_new: 1, no_dirt: 2, near_dirt:3 ,dirty:4, bad_condition:5 }
  enum shippingcharge_num:{ seller_burden: 0, cod: 1 }
  enum daystoship_num:{one_to_two: 0, two_to_three:1, four_to_seven:2 }

end
