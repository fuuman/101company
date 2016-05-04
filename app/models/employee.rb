class Employee < ActiveRecord::Base
  # === Associations ===
  belongs_to :department

end
