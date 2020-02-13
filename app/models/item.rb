class Item < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :bland
  belongs_to :shippingway

  has_many   :itemimages
  has_many   :category_parents 
  has_many   :category_children 
  has_many   :category_grandchildren
  
  has_one    :trade 

end
