class AddCategoryIdToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :category_id, :integer
  end
end
