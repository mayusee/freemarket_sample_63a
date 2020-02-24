class ItemsController < ApplicationController
  def index
  end
  
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      
      image_params[:images].each do |image|
        @item.images.build
        item_image = @item.images.new(image: image)
        item_image.save
      end

      respond_to do |format|
        format.json
      end
    end
  end

  def show
  end
  
end
