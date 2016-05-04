module DepartmentsHelper
  def get_company_name_from_id(id)
    Company.find(id).name rescue ''
  end

  def get_employee_name_from_id(id)
    Employee.find(id).name rescue ''
  end
end
