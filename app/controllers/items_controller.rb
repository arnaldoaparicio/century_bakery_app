class ItemsController < ApplicationController
  def new

  end

  def create
    Item.create(item_params)
    redirect_to '/'
  end

  def edit
    @list = List.find(params[:list_id])
    @item = Item.find(params[:id])
  end

  def destroy
    
  end

  def show
    
  end

  private
  def item_params
    params.permit(:name, :minimum, :number_in_stock, :item_type, :note, :list_id)
  end
end