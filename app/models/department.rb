#Developer: Marius
#One department got many employees and many sub departments
#One department got only one super department, one manager and one company

class Department < ActiveRecord::Base
# === Associations ===
  has_many :employees
  has_many :sub_departments, class_name: 'Department', dependent: :destroy, foreign_key: 'super_department_id'
  belongs_to :super_department, class_name: 'Department'
  belongs_to :manager, class_name: 'Employee'
  belongs_to :company

  #a department must have a name
  # === Validations ===
  validates :name, presence: true

end
