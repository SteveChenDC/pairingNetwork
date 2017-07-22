class AddImgToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :img, :string
  end
end
