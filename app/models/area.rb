class Area < ApplicationRecord
  # association
  has_many :users
  has_many :shipping

end
