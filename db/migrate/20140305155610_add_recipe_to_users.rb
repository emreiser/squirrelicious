class AddRecipeToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :recipe, index: true
  end
end
