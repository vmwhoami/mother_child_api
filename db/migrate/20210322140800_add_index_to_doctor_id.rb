class AddIndexToDoctorId < ActiveRecord::Migration[6.1]
  def change
    add_index :appointments, :doctor_id
    add_index :appointments, :user_id
  end
end
