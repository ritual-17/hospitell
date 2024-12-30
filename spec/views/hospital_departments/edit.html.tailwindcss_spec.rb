require 'rails_helper'

RSpec.describe "hospital_departments/edit", type: :view do
  let(:hospital_department) {
    HospitalDepartment.create!()
  }

  before(:each) do
    assign(:hospital_department, hospital_department)
  end

  it "renders the edit hospital_department form" do
    render

    assert_select "form[action=?][method=?]", hospital_department_path(hospital_department), "post" do
    end
  end
end
