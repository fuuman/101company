class CompaniesController < ApplicationController
  # === Callbacks ===
  before_action :set_companies, only: [:index]
  before_action :set_company, only: [:destroy]

  def index
  end

  def new
  end

  def create
  end

  def edit

  end

  def show
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

end
