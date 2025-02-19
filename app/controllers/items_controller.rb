class ItemsController < ApplicationController
  def new

  end

  def create
    Item.create(item_params)
    redirect_to '/'
  end

  private
  def item_params
    params.permit(:name, :minimum, :number_in_stock, :item_type, :note, :list_id)
  end
end