class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :imageurl
      t.text :ingeredientlist
      t.string :yummlyid
      t.references :users
    end
  end
end
