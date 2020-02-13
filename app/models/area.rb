class Area < ApplicationRecord
  # associations
  has_many :users
  has_many :shippings

end
