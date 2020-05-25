class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :text
      t.string :image_id
      t.string :scraping_image＿id

      t.timestamps null: false
    end
  end
end
