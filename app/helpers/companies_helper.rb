module CompaniesHelper
  # Developer : Frank & André

  # returns the number of employees for a chosen company or department
  def get_employee_count(unit)
    result = 0
    begin
      unit.departments.each do |department|
        result += department.employees.count
      end
    rescue
      result = unit.employees.count
    end
    result
  end

  # returns the number of departments of a company
  def get_department_count(company)
    company.departments.count
  end

end
