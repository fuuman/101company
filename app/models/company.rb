#Developer: Marius
#one company got many departments and if you delete the company, you delete the dependencies as well

class Company < ActiveRecord::Base
  # === Associations ===
  has_many :departments, dependent: :destroy

  #a company must have a name
  # === Validations ===
  validates :name, presence: true
end
