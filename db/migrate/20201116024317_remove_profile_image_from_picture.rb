class RemoveProfileImageFromPicture < ActiveRecord::Migration[5.2]
  def change
    remove_column :pictures, :profile_image, :text
  end
end
