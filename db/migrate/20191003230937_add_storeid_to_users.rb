class AddStoreidToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :storeid, :integer
  end
end
