class Company < ActiveRecord::Base
  has_many :departments, dependent: :destroy
end
