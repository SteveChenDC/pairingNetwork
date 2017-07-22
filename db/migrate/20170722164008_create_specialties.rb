class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.integer :language_id
      t.integer :user_id

      t.timestamps
    end
    add_index :specialties, [:language_id, :user_id], unique: true
  end
end
