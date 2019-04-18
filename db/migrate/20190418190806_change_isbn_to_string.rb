class ChangeIsbnToString < ActiveRecord::Migration[5.2]
  def change
    change_column :listings, :isbn, :string
  end
end
