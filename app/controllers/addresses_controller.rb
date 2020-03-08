class AddressesController < ApplicationController
  def index
    @addresses = Address.where(user_id: current_user.id)
  end
  
  def new
  end

  def create
  end

  def edit
  end

  def update
  end
  
  private
  def address_params
  end

end
