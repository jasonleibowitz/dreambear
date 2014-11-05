class CreateCollaborations < ActiveRecord::Migration
  def change
    create_table :collaborations do |t|
      t.string :category
      t.string :link
      t.timestamps
    end
  end
end
