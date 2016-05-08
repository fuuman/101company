class Employee < ActiveRecord::Base
  # === Associations ===
  belongs_to :department

  def cut
    self.salary /= 2
    self.save
  end
end
