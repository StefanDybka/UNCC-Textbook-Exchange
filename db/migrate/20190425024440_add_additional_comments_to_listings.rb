class AddAdditionalCommentsToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :comments, :body
  end
end
