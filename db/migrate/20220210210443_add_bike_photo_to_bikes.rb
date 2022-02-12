class AddBikePhotoToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :bike_photo, :binary
  end
end
