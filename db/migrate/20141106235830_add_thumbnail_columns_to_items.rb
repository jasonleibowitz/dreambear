class AddThumbnailColumnsToItems < ActiveRecord::Migration
  def self.up
    add_attachment :items, :thumbnail
  end
  def self.down
    remove_attachment :items, :thumbnail
  end
end
