class RemoveFavrecipeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :favrecipe_id
  end
end
