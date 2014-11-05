class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :link
      t.timestamps
    end
  end
end
