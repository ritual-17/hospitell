# == Schema Information
#
# Table name: hospital_departments
#
#  id            :integer          not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  hospital_id   :integer          not null
#  department_id :integer          not null
#
# Indexes
#
#  index_hospital_departments_on_department_id  (department_id)
#  index_hospital_departments_on_hospital_id    (hospital_id)
#

class HospitalDepartment < ApplicationRecord
  belongs_to :hospital
  belongs_to :department

  has_many :posts
end
