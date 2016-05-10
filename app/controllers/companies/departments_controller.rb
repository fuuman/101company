class Companies::DepartmentsController < ApplicationController
  # === Callbacks ===
  before_action :set_company, only: [:index]

  def index
    @departments = Department.where(company_id: @company.id)
  end

  private

  def set_company
    @company = Company.includes(:departments).find(params[:company_id])
  end
end
