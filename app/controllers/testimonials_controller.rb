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
    render @testimonials
  end

end
