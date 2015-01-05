class CreateFavrecipeUserJoinTable < ActiveRecord::Migration
  def change
    create_join_table :favrecipes, :users do |t|
    t.index [:favrecipe_id, :user_id]
    t.index [:user_id, :favrecipe_id]
    end
  end
end
