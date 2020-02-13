class Trade < ApplicationRecord
    # associations
    belongs_to :item
    belongs_to :user
end
