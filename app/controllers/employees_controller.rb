class EmployeesController < ApplicationController
  #Developer: Marco&Marius

  # === Callbacks ===
  before_action :set_employees, only: [:index, :create, :update]
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
    set_employees
  end

  def destroy
    @employee.destroy
    set_employees
  end

  def cut
    employees_id_array = params[:format].split('/')
    @employees = Employee.where(id: employees_id_array)
    cut_salaries(@employees)
    @employees.reload
  end

  private

  def cut_salaries(employees)
    unless employees.nil?
      employees.each do |e|
        e.cut
      end
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
