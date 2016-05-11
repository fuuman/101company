class DepartmentsController < ApplicationController
  # === Callbacks ===
  before_action :set_departments, only: [:index, :new, :edit]
  before_action :set_companies, only: [:new, :edit]
  before_action :set_employees, only: [:new, :edit]
  before_action :set_department, only: [:edit, :update, :destroy]

  def index
  end

  def new
    @department = Department.new
    render layout: false
  end

  def create
    @department = Department.create(department_params)
  end

  def edit
    render layout: false
  end

  def update
    @department.update(department_params)
    set_department
  end

  def destroy
    @department.destroy
  end

  private

  def set_department
    @department = Department.find(params[:id])
  end

  def set_departments
    @departments = Department.all
  end

  def set_companies
    @companies = Company.all
  end

  def set_employees
    @employees = Employee.where(department_id: params[:id])
  end

  def department_params
    params.require(:department).permit(:name, :company_id, :super_department_id, :manager_id)
  end
end
