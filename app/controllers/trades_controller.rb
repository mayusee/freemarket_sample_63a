class TradesController < ApplicationController
  protect_from_forgery :except => [:create]
  before_action :get_item, :get_card, only: [:index, :new, :create, :done]

  def index

  end

  def new

  end

  def create
    #支払い処理
    card = Creditcard.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_PRIVATE_KEY']
    pay = Payjp::Charge.create(
      :amount => @item.price.to_i, #decimalをintegerに変換
      :customer => card.customer_id, #顧客ID 
      :currency => 'jpy', #日本円
    )

    if pay.paid
     #支払処理成功後のTradeレコード登録処理
      @trade = Trade.new

      @trade["user_id"] = current_user.id
      @trade["item_id"] = @item.id
      @trade["address_id"] = @address.id

      if @trade.save
        redirect_to action: 'done' #完了画面に移動 
      end
    else
        #支払処理に失敗した場合の処理を記述する。
    end
  end

  def done
    
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
    #from_withで「購入」ボタンが押された場合の処理(現在はform_tagなので未実装)
    params.require(:trade).permit(:brand_id,:category_id,:shippingway_id,:size_num,:condition_num,:daystoship_num,:title,:description,:price, item_images_attributes: [:id, :item_id, :image])
  end

end
