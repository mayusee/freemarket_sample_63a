class ItemImage < ApplicationRecord
    # associations
    belongs_to :item 
    mount_uploader :image, ImageUploader
end
