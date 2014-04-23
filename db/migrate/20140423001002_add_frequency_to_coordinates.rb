class AddFrequencyToCoordinates < ActiveRecord::Migration
  def change
    add_column :coordinates, :frequency, :string
  end
end
