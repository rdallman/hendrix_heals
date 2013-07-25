class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :name
      t.integer :phone
      t.integer :office

      t.timestamps
    end
  end
end
