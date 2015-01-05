class AddUserToFavrecipes < ActiveRecord::Migration
  def change
    add_reference :favrecipes, :user, index: true
  end
end
