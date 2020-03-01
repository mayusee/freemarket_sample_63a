class ItemsController < ApplicationController
  before_action :set_user_address,only: :create

  def index
  end
  
  def new
    @item = Item.new(feerate: 0.1)
    5.times {@item.item_images.build}
  end

  def create
    @item = Item.new(item_params)
    @item["seller_id"] = current_user.id
    @item["seller_address_id"] = @address.id
    @item["feerate"] = 0.1
    @item["profit_price"] = @item.price - (@item.price * @item.feerate)
    if @item.save
      
      # image_params[:images].each do |image|
      #   @item.images.build
      #   item_image = @item.images.new(image: image)
      #   item_image.save
      # end

      # respond_to do |format|
      #   format.html { redirect_to root_path}
      #   format.json
      # end
      redirect_to root_path
    end

  end

  def show
  end

  private
    def item_params
      params.require(:item).permit(:brand_id,:category_id,:shippingway_id,:size_num,:condition_num,:daystoship_num,:title,:description,:price)
    end
    
    def image_params
      params.require(:item_image).permit({:image => []})
    end

    def set_user_address
      #user_id:current_user.id
      @address = Address.find_by(user_id: 1,status_num: 0)
    end
end
