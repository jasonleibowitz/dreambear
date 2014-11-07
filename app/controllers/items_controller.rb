class ItemsController < ApplicationController

  def index
    @items = Item.all
    @music_videos = Item.where(category: 'Music Video')
    @commercials = Item.where(category: "Commercial")
    @films = Item.where(category: "Film")
    @songs = Item.where(category: "Music")
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save!
    end
    redirect_to root_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update

  end

  def destroy

  end

  private
  def item_params
    params.require(:item).permit(:title, :category, :description, :link, :thumbnail)
  end

end
