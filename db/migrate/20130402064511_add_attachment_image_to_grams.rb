class AddAttachmentImageToGrams < ActiveRecord::Migration
  def self.up
    change_table :grams do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :grams, :image
  end
end
