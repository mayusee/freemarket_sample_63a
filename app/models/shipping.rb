class Shipping < ApplicationRecord

  # association
  has_many :items
  belongs_to :user

end
