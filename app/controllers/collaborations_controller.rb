class CollaborationsController < ApplicationController

  def index
    @collaborations = Collaboration.all
    @artists = Collaboration.where(category: 'Artist')
    @corporations = Collaboration.where(category: 'Corporate')
  end

  def show
    @collaboration = Collaboration.find(params[:id])
  end

  def new
    @collaboration = Collaboration.new
  end

  def create
    @collaboration = Collaboration.new(collaboration_params)
    if @collaboration.valid?
      @collaboration.save!
    end
    redirect to: collaborate_path
  end

  def edit
    @collaboration = Collaboration.find(params[:id])
    @collaboration.update(collaboration_params)
    redirect to: collaborate_path
  end

  def destroy
    @collaboration = Collaboration.find(params[:id])
    @collaboration.destroy
    redirect to: root_pathcolla
  end

  private
  def collaboration_params
    params.require(:collaboration).permit(:link, :category, :logo)
  end

end
