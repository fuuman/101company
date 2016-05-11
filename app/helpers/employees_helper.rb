module EmployeesHelper
  #Developer : André & Frank

  # return total salary of the given collection employees
  def get_total_salaries(employees)
    total = 0
    employees.each do |e|
      unless e.salary.nil?
        total += e.salary
      end
    end
    total.round(2)
  end

  # returns the average salary of the given collection employees
  def get_mean_salary(employees)
    if employees.count != 0
      (get_total_salaries(employees) / employees.count).round(2)
    else
      0
    end
  end

end
