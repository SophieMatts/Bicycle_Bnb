class AddUserToBikes < ActiveRecord::Migration[7.0]
  def change
    # change_table :bikes do |t|
      add_reference :bikes, :user, index: true
    # end
  end
end
