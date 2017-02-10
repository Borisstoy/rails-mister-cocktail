class RenamePhotoUrlColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :cocktails, :photo_url, :foreign_image
  end
end
