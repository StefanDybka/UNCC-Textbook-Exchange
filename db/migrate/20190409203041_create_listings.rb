class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :name
      t.integer :isbn
      t.string :email
      t.string :condition

      t.timestamps
    end
  end
end
