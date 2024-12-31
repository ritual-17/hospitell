class AddHospitalDepartmentToPost < ActiveRecord::Migration[8.0]
  def change
    add_reference :posts, :hospital_department, null: false, foreign_key: true
  end
end
