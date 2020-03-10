class AddressesController < ApplicationController
  before_action :set_user

  def index
    @addresses = Address.where(user_id: current_user.id)
  end
  
  def new
    @address = Address.new
  end

  def create
    Address.create(address_params)
    redirect_to user_addresses_path
  end

  def edit
  end

  def update
  end

  
  private
  def address_params
    params.requie(:address).parmit(:area_id, :building, :city, :number, :postal_number, :status_nun, :telephone_number)
  end

  def set_user
    @user = User.find(current_user.id)
  end
end
