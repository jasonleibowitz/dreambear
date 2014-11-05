class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :text
      t.string :link
      t.string :commentor
      t.timestamps
    end
  end
end
