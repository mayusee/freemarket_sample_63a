class CategoryChild < ApplicationRecord
  # association
  belongs_to :category_parent
  has_many :category_grandchildren 
end
