class HospitalDepartmentsController < ApplicationController
  before_action :set_hospital_department, only: %i[ show edit update destroy ]

  # GET /hospital_departments or /hospital_departments.json
  def index
    @hospital_departments = HospitalDepartment.all
  end

  # GET /hospital_departments/1 or /hospital_departments/1.json
  def show
  end

  # GET /hospital_departments/new
  def new
    @hospital_department = HospitalDepartment.new
  end

  # GET /hospital_departments/1/edit
  def edit
  end

  # POST /hospital_departments or /hospital_departments.json
  def create
    @hospital_department = HospitalDepartment.new(hospital_department_params)

    respond_to do |format|
      if @hospital_department.save
        format.html { redirect_to @hospital_department, notice: "Hospital department was successfully created." }
        format.json { render :show, status: :created, location: @hospital_department }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hospital_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hospital_departments/1 or /hospital_departments/1.json
  def update
    respond_to do |format|
      if @hospital_department.update(hospital_department_params)
        format.html { redirect_to @hospital_department, notice: "Hospital department was successfully updated." }
        format.json { render :show, status: :ok, location: @hospital_department }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hospital_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hospital_departments/1 or /hospital_departments/1.json
  def destroy
    @hospital_department.destroy!

    respond_to do |format|
      format.html { redirect_to hospital_departments_path, status: :see_other, notice: "Hospital department was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hospital_department
      @hospital_department = HospitalDepartment.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def hospital_department_params
      params.fetch(:hospital_department, {})
    end
end
