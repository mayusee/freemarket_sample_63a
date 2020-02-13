class CategoryParent < ApplicationRecord
  # associations
  has_many   :items
  has_many   :category_children
end
