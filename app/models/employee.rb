class Employee < ActiveRecord::Base
  # === Associations ===
  belongs_to :department

  # === Validations ===
  validates :name, presence: true
  validates :salary, numericality: true

  def cut
    self.salary /= 2
    self.save
  end
end
