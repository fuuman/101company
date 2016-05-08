module EmployeesHelper

  def get_total_salaries(employees)
    total = 0
    employees.each do |e|
      total += e.salary
    end
    total
  end

end
