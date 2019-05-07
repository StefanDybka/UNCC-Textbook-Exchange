class AddListingIdToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :listing_id, :integer
  end
end
