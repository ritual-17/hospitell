# == Schema Information
#
# Table name: posts
#
#  id                     :integer          not null, primary key
#  title                  :string
#  body                   :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  hospital_department_id :integer          not null
#
# Indexes
#
#  index_posts_on_hospital_department_id  (hospital_department_id)
#

require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
