class CreatePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :preferences do |t|
      t.integer :cashier
      t.integer :stockhandler
      t.integer :dairy
      t.integer :deli
      t.integer :baker

      t.timestamps
    end
  end
end
