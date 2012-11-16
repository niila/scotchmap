class AddLatitudeAndLongitudeToScotch < ActiveRecord::Migration
  def change
    add_column :scotches, :latitude, :float
    add_column :scotches, :longitude, :float
  end
end
