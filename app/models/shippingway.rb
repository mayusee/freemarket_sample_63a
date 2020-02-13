class Shippingway < ApplicationRecord
    # associations
    belongs_to :shipping
    has_many   :items
end
