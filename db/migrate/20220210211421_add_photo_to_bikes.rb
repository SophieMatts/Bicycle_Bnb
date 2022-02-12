class AddPhotoToBikes < ActiveRecord::Migration[7.0]
  def change
    add_column :bikes, :photo_url, :string
  end
end
