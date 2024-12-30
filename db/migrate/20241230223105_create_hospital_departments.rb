class CreateHospitalDepartments < ActiveRecord::Migration[8.0]
  def change
    create_table :hospital_departments do |t|
      t.timestamps
    end
  end
end
