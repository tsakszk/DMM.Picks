class AddScoreToBookComments < ActiveRecord::Migration[5.2]
  def change
    add_column :book_comments, :score, :integer
  end
end
