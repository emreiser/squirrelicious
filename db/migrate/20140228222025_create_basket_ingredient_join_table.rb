class CreateBasketIngredientJoinTable < ActiveRecord::Migration
  def change
    create_join_table :baskets, :ingredients do |t|
      t.index [:basket_id, :ingredient_id]
      t.index [:ingredient_id, :basket_id]
    end
  end
end
