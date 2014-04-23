class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.float :lattitude
      t.float :longitude
      t.string :name
      
      t.timestamps

    end
     add_column :coordinates, :place, :string
  end
end
