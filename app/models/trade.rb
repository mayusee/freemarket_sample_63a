class Trade < ApplicationRecord
    # associations
    belongs_to :user
    belongs_to :item
end
