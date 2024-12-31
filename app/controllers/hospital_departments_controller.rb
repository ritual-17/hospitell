class HospitalDepartmentsController < ApplicationController
  # GET /hospital_departments or /hospital_departments.json
  def index
    set_hospital
    @hospital_departments = HospitalDepartment.all
  end

  # GET /hospital_departments/1 or /hospital_departments/1.json
  def show
    set_hospital_department
  end


  private
    def set_hospital_department
      @hospital_department = HospitalDepartment.find(params.expect(:id))
    end

    def set_hospital
      @hospital = Hospital.find(params.expect(:hospital_id))
    end

    # Only allow a list of trusted parameters through.
    def hospital_department_params
      params.fetch(:hospital_department, {})
    end
end
