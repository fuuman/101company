module CompaniesHelper
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

  def get_department_count(company)
    company.departments.count
  end
end
