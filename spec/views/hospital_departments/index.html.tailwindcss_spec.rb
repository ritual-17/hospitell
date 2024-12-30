require 'rails_helper'

RSpec.describe "hospital_departments/index", type: :view do
  before(:each) do
    assign(:hospital_departments, [
      HospitalDepartment.create!(),
      HospitalDepartment.create!()
    ])
  end

  it "renders a list of hospital_departments" do
    render
    cell_selector = 'div>p'
  end
end
