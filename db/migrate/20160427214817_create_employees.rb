#Developer: Marco
#creating the table for employees and give it a timestamp

class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.float :salary

      t.timestamps null: false
    end
  end
end
