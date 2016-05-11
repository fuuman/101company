class Departments::EmployeesController < ApplicationController
  #Developer: Marco&Marius

  # === Callbacks ===
  before_action :set_department, only: [:index]

  def index
    @employees = Employee.where(department_id: @department.id)
  end

  private

  def set_department
    @department = Department.includes(:employees).find(params[:department_id])
  end
end