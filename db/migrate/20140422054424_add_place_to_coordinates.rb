class AddPlaceToCoordinates < ActiveRecord::Migration
  def change
    add_column :coordinates, :place, :string
  end
end
