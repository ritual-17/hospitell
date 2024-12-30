require 'rails_helper'

RSpec.describe "hospital_departments/show", type: :view do
  before(:each) do
    assign(:hospital_department, HospitalDepartment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
