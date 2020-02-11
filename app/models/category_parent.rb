class CategoryParent < ApplicationRecord
  # association
  has_many :category_children
end
