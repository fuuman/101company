class EmployeesController < ApplicationController
  # === Callbacks ===
  before_action :set_employees, only: [:index]

  def index
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_employees
    @employees = Employee.all
  end
end
