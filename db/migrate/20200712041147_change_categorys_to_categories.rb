class ChangeCategorysToCategories < ActiveRecord::Migration[6.0]
  def change
    rename_table :categorys, :categories
  end
end
