class ChangeCommentsToText < ActiveRecord::Migration[5.2]
  def change
      change_column :listings, :comments, :text
  end
end
