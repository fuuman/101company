class Company < ActiveRecord::Base
  # === Associations ===
  has_many :departments, dependent: :destroy

  # === Validations ===
  validates :name, presence: true
end
