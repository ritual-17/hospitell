# == Schema Information
#
# Table name: hospitals
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hospital < ApplicationRecord
  has_many :hospital_departments
  has_many :departments, through: :hospital_departments
end
