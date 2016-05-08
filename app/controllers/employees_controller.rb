class EmployeesController < ApplicationController
  # === Callbacks ===
  before_action :set_employees, only: [:index]
  before_action :set_departments, only: [:new, :edit]
  before_action :set_employee, only: [:edit, :update, :destroy]

  def index
  end

  def new
    @employee = Employee.new
    render layout: false
  end

  def create
    @employee = Employee.create(employee_params)
  end

  def edit
    render layout: false
  end

  def update
    @employee.update(employee_params)
    set_employee
  end

  def destroy
    @employee.destroy
  end

  def cut
    cut_salaries(params[:employees])
  end

  private

  def cut_salaries(employees)
    employees.each do |e|
      e.cut
    end
  end

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def set_employees
    @employees = Employee.all
  end

  def set_departments
    @departments = Department.all
  end

  def employee_params
    params.require(:employee).permit(:name, :address, :salary, :department_id)
  end
end
