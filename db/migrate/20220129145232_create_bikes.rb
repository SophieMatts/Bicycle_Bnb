class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.integer :cost
      t.string :location

      t.string :type
      t.text :description
      t.string :title

      t.timestamps
    end
  end
end
