#Developer: Marco
#creating a table for companies and give it a timestamp

class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
