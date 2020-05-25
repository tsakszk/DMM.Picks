class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :subject
      t.string :body
      t.integer :abouts_status

      t.timestamps
    end
  end
end
