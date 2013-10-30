class AddAttachmentImageToNotes < ActiveRecord::Migration
  def self.up
    change_table :notes do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :notes, :image
  end
end
