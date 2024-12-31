# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Department < ApplicationRecord
  has_many :hospital_departments
  has_many :hospitals, through: :hospital_departments
end
