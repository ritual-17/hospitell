class AddDepartmentsToHospitalDepartment < ActiveRecord::Migration[8.0]
  def change
    add_reference :hospital_departments, :department, null: false, foreign_key: true
  end
end
