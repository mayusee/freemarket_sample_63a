class TopsController < ApplicationController
  def index
    @brands = Brand.order("RAND()").limit(1)
    id = @brands.ids
    @items = Item.includes(:user,:item_images).order('items.created_at desc').limit(3)
    @items_brands = Item.includes(:user,:item_images).where(brand_id: id).order('items.created_at desc').limit(3)
  end
end