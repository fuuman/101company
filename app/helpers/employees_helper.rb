module EmployeesHelper

  def get_total_salaries(employees)
    total = 0
    employees.each do |e|
      unless e.salary.nil?
        total += e.salary
      end
    end
    total.round(2)
  end

  def get_mean_salary(employees)
    (get_total_salaries(employees) / employees.count).round(2)
  end

end
