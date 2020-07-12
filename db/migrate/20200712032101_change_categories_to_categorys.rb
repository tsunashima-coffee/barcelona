class ChangeCategoriesToCategorys < ActiveRecord::Migration[6.0]
  def change
    rename_table :categories, :categorys
  end
end
