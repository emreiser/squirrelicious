class AddFavrecipesToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :favrecipe, index: true
  end
end
