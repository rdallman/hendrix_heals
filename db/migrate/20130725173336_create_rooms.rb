class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :bed
      t.string :privacy
      t.integer :patient_id

      t.timestamps
    end
    add_column :patients, :insurance, :string
    add_column :patients, :insurance_policy, :integer
  end
end
