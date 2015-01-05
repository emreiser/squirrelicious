class DropTableFavrecipeUserJoinTable < ActiveRecord::Migration
  def change
    drop_table :favrecipes_users
  end
end
