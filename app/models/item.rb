class Item < ApplicationRecord
  # association
  belongs_to :user

  has_many   :blands 
  has_many   :shippingway 
  has_many   :category_parents 
  has_many   :category_children 
  has_many   :category_grandchildren 

  has_one    :trade 

end
