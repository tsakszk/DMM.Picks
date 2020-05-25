class CreateHamburgers < ActiveRecord::Migration[5.2]
  def change
    create_table :hamburgers do |t|
      t.integer :hamburgers_name
      t.boolean :hamburgers_flag
      t.timestamps
    end
  end
end
