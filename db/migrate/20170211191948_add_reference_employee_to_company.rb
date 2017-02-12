class AddReferenceEmployeeToCompany < ActiveRecord::Migration
  def change
    change_table :employees do |t|
      t.references :company
    end
  end
end
