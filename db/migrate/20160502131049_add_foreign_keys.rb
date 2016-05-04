class AddForeignKeys < ActiveRecord::Migration
  def change
    add_reference :departments, :company, index: true
    add_reference :departments, :super_department, index: true
    add_reference :departments, :manager, index: true
    add_reference :employees, :department, index: true
  end
end
