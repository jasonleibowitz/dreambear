class ItemController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update

  end

  def destroy

  end

end
