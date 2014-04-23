class CreateMesses < ActiveRecord::Migration
  def change
    create_table :messes do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
