class DropTableFavrecipes < ActiveRecord::Migration
  def change
    drop_table :favrecipes
  end
end
