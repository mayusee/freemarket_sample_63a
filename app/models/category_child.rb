class CategoryChild < ApplicationRecord
  # associations
  belongs_to :category_parent
  has_many   :items 
  has_many   :category_grandchildren
end
