class Shipping < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :address
  belongs_to :item
end
