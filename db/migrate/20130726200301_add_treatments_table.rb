class AddTreatmentsTable < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :category
      t.integer :cost

      t.timestamps
    end
    remove_column :procedures, :category
    remove_column :procedures, :cost
    add_column :procedures, :treatment_id, :integer
  end
end
