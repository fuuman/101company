class CompaniesController < ApplicationController
  # === Callbacks ===
  before_action :set_companies, only: [:index]
  before_action :set_company, only: [:edit, :update, :destroy]

  def index

  end

  def new
    @company = Company.new
    render layout: false
  end

  def create
    @company = Company.create(company_params)
  end

  def edit
    render layout: false
  end

  def update
    @company.update(company_params)
    set_company
  end

  def destroy
    @company.destroy
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def set_companies
    @companies = Company.all
  end

  def company_params
    params.require(:company).permit(:name)
  end

end
