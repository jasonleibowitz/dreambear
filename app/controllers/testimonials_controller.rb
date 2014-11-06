class TestimonialsController < ApplicationController

  def index
    @testimonials = Testimonial.all
  end

  def show
    @testimonial = Testimonial.find(params[:id])
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new(testimonial_params)
    if @testimonial.valid?
      @testimonial.save!
    end
    redirect_to press_path
  end

  def edit
    @testimonial = Testimonial.find(params[:id])
  end

  def update
    @testimonial = Testimonial.find(params[:id])
    @testimonial.update(testimonial_params)
    redirect_to press_path
  end

  private
  def testimonial_params
    params.require(:testimonial).permit(:text, :link, :commentor)
  end

end
