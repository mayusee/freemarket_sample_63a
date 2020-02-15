class Area < ApplicationRecord
  # associations
  has_many :users
  has_many :addresses

end
