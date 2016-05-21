# Developer: Marius
# An Employee has one department

class Employee < ActiveRecord::Base
  # === Associations ===
  belongs_to :department

  # An Employee must have a name and a salary
  # === Validations ===
  validates :name, presence: true
  validates :salary, numericality: true

  # cut-feature halfs the salary of the employee
  def cut
    self.salary /= 2
    self.save
  end
end
