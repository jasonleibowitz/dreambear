class AddLogoColumnsToCollaborations < ActiveRecord::Migration
  def self.up
    add_attachment :collaborations, :logo
  end
  def self.down
    remove_attachment :collaborations, :logo
  end
end
