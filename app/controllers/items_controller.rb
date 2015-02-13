class ItemsController < ApplicationController

  def index
    page_name = params[:id].downcase
    binding.pry
    case page_name
    when "music_videos"
      @items = Item.where(category: 'Music Video')
    when "commercials"
      @items = Item.where(category: "Commercial")
    when "film"
      @items = Item.where(category: "Film")
    when "music"
      @items = Item.where(category: "Music")
    end
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
