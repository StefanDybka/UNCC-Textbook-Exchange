class AddUserIdToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :user_id, :int
  end
end
