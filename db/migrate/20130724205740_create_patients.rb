class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :street_address
      t.date :admit_date
      t.date :discharge_date
      t.integer :zip
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
