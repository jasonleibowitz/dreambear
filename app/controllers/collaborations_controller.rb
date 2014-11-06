class CollaborationsController < ApplicationController

  def index
    @collaborations = Collaboration.all
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
    redirect to: collaboration_path
  end

  def edit
    @collaboration = Collaboration.find(params[:id])
    @collaboration.update(collaboration_params)
    redirect to: collaboration_path
  end

  def destroy

  end

  private
  def collaboration_params
    params.require(:collaboration).permit(:category, :link)
  end

end
