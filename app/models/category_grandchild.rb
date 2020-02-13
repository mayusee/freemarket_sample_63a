class CategoryGrandchild < ApplicationRecord
  # associations
  belongs_to :category_child
  has_many   :items 
end
