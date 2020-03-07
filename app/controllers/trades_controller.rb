class TradesController < ApplicationController
  before_action :get_item, :get_card, only: [:index, :new]

  def index
    
  end

  def new
    @trade = Item.new
  end

  private

  def get_item
    @user = current_user
    @item = Item.find(params[:item_id])
    @item_image = ItemImage.find_by(params[:item_id])
    @address = Address.find_by(user_id: current_user.id)
  end

  def get_card
    card =  Creditcard.where(user_id: current_user.id).first
    unless card.nil?
      Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end

  end

  def get_params
    params.require(:trade).permit(:brand_id,:category_id,:shippingway_id,:size_num,:condition_num,:daystoship_num,:title,:description,:price, item_images_attributes: [:id, :item_id, :image])
  end

end
