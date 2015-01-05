class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :recipes, :ingeredientlist, :ingredientlist
  end
end
