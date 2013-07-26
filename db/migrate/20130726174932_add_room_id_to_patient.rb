class AddRoomIdToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :room_id, :integer
    remove_column :rooms, :patient_id
  end
end
