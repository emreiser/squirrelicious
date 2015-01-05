class CreateFavrecipes < ActiveRecord::Migration
  def change
    create_table :favrecipes do |t|
      t.string :url
      t.string :name
      t.string :yummly_id

      t.timestamps
    end
  end
end
