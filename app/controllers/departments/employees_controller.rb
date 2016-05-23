class Departments::EmployeesController < ApplicationController
  # Developer: Marco & Marius

  # === Callbacks ===
  before_action :set_department, only: [:index, :cut]

  def index
    @employees = Employee.where(department_id: @department.id)
  end

  def cut
    set_employees
    employees_id_array = params[:format].split('/')
    if employees_id_array.size == 1
      @employee = Employee.where(id: employees_id_array)
      cut_salaries(@employee)
    else
      cut_salaries(@employees)
    end
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

  def set_department
    @department = Department.find(params[:department_id])
  end

  def set_employees
    @employees = Employee.where(department_id: @department.id)
  end

end