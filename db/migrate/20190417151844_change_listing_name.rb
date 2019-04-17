class ChangeListingName < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :name, :title
  end
end
