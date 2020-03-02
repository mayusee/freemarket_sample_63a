class TradesController < ApplicationController
  before_action :get_item, only: [:new]

  def new
  end

  def create
  end

  private

  def get_item
    @item = Item.find(params[:group_id])
  end

end
