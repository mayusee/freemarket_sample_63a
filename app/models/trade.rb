class Trade < ApplicationRecord
    # association
    belongs_to :item
    belongs_to :user

end
