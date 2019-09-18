class AddDepartmentToShifts < ActiveRecord::Migration[5.1]
  def change
    add_column :shifts, :department, :integer
  end
end
