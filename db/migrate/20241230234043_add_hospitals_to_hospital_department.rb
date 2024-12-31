class AddHospitalsToHospitalDepartment < ActiveRecord::Migration[8.0]
  def change
    add_reference :hospital_departments, :hospital, null: false, foreign_key: true
  end
end
