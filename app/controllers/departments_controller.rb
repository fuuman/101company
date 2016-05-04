class DepartmentsController < ApplicationController
  # === Callbacks ===
  before_action :set_departments, only: [:index]

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

  def set_departments
    @departments = Department.all
  end
end
