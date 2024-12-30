require 'rails_helper'

RSpec.describe "hospital_departments/new", type: :view do
  before(:each) do
    assign(:hospital_department, HospitalDepartment.new())
  end

  it "renders new hospital_department form" do
    render

    assert_select "form[action=?][method=?]", hospital_departments_path, "post" do
    end
  end
end
