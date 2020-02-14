class Item < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :bland
  belongs_to :shippingway
  belongs_to :category_parent 
  belongs_to :category_child 
  belongs_to :category_grandchild

  has_many   :itemimages
  
  has_one    :trade 

end
