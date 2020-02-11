class Area < ApplicationRecord

  # association
  has_many :users
  has_many :items
  has_many :shippings

end
