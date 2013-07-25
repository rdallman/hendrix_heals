class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :name
      t.string :category
      t.integer :cost
      t.integer :time
      t.integer :physician_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
