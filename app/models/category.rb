class Category < ApplicationRecord
  # associations
  has_many   :items
  has_many   :category_sizes
  has_many   :product_sizes, through: :category_sizes
  has_ancestry
end
