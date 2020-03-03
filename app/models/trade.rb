class Trade < ApplicationRecord
  # associations
  belongs_to    :item
  belongs_to    :user
  belongs_to    :address

  # enum
  enum status_num:{trading:0, under_delivery:1, finished:2 }
end
