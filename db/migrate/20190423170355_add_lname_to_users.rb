class AddLnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lname, :string
    rename_column :users, :name, :fname
  end
end
