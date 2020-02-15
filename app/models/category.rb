class Category < ApplicationRecord
  # associations
  has_many   :items
  has_ancestry
end
