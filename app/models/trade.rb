class Trade < ApplicationRecord
    # associations
    belongs_to :user

    has_one    :item
end
