class TradesController < ApplicationController
  before_action :get_item, only: [:new]

  def new
  end

  private

  def get_item
    @item = Item.find(params[:item_id])
    @item_image = ItemImage.find_by(params[:item_id])
    @address = Address.find_by(user_id: current_user.id)
    @creditcad = Creditcard.find_by(user_id: current_user.id)
  end

end
