class ChangeTextFormatInTestimonials < ActiveRecord::Migration
  def change
    change_column :testimonials, :text, :text
  end
end
