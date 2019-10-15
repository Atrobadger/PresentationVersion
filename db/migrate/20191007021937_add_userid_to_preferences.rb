class AddUseridToPreferences < ActiveRecord::Migration[5.1]
  def change
    add_column :preferences, :userid, :integer
  end
end
