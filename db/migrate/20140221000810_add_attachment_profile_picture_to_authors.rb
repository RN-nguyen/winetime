class AddAttachmentProfilePictureToAuthors < ActiveRecord::Migration
  def self.up
    change_table :authors do |t|
      t.attachment :profile_picture
    end
  end

  def self.down
    drop_attached_file :authors, :profile_picture
  end
end
