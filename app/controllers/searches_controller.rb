class SearchesController < ApplicationController
  def index
    @items = Item.includes(:bland,:category)
  end
end
