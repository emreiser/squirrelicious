class AddUserToBaskets < ActiveRecord::Migration
  def change
    add_reference :baskets, :user, index: true
  end
end

